import * as React from 'react';
import * as Constants from 'utils/constants'
import { Box, Grid, debounce } from "@mui/material";
import { BasicPaper } from "components/Atoms/BasicPaper";
import { ResizableBox } from 'react-resizable';

export const ResizableGrid = ({ children, minWidth, columnWidth, paddingTop, staticBottom: StaticBottomComponent }) => {
  const [maxWidth, setMaxWidth] = React.useState(0);
  const [width, setWidth] = React.useState(0);
  const [gridCols, setGridCols] = React.useState(12);
  const containerRef = React.useRef(null);
  const contentRef = React.useRef(null);

  React.useEffect(() => {
    const initMaxWidth = containerRef.current.clientWidth;
    setMaxWidth(initMaxWidth);
    const localWidth = localStorage.getItem(Constants.LOCAL_RESIZABLE_WIDTH);
    const localWidthN = Number(localWidth);
    if (localWidth && localWidthN >= minWidth && localWidthN <= initMaxWidth) {
      console.log('set width to: ' + localWidthN)
      setWidth(localWidthN);
    } else {
      setWidth(columnWidth);
    }

    const resizeObserver = new ResizeObserver(() => {
      let divider = Math.floor(contentRef.current.clientWidth / columnWidth);
      if (12 % divider === 0 && children.length > 1) {
        setGridCols(12 / divider);
      }
    });
    resizeObserver.observe(contentRef.current);

    return () => {
      resizeObserver.disconnect();
    };
  }, [columnWidth, children.length, minWidth]);

  const windowResizeHandler = React.useCallback(
    () => {
      setMaxWidth(containerRef.current.clientWidth);
    },
    [],
  );

  const debouncedWindowResizeHandler = React.useMemo(
    () => debounce(windowResizeHandler, 300),
    [windowResizeHandler],
  );

  React.useEffect(() => {
    window.addEventListener("resize", debouncedWindowResizeHandler);
    // Initial update
    windowResizeHandler();
    return () => {
      window.removeEventListener("resize", debouncedWindowResizeHandler);
    }
  }, [debouncedWindowResizeHandler, windowResizeHandler]);

  const onResizeStop = (_, data) => {
    const stopWidth = data.size.width;
    if (typeof stopWidth === 'number' && stopWidth >= minWidth && stopWidth <= maxWidth) {
      localStorage.setItem(Constants.LOCAL_RESIZABLE_WIDTH, stopWidth);
    }
  }

  return (
    <Box ref={containerRef} sx={{
      display: 'flex',
      width: '100%',
      justifyContent: 'center'
    }}>
      <ResizableBox
        style={{ position: 'relative', minWidth: '0' }}
        width={width}
        minConstraints={[minWidth]}
        maxConstraints={[maxWidth]}
        draggableOpts={{ grid: [4, 4] }}
        onResizeStop={onResizeStop}
        handle={<ResizeHandle />}
        axis='x'>
        <BasicPaper innerref={contentRef} sx={{ padding: 1, paddingTop: paddingTop ? paddingTop : 3, width: '100%', boxSizing: 'border-box' }}>
          <Grid container spacing={3}>
            {Array.isArray(children) 
            ? children.map((child, index) => <Grid key={index} item xs={gridCols}>{child}</Grid>)
            : <Grid item xs={gridCols}>{children}</Grid>}
          </Grid>
          {StaticBottomComponent && <StaticBottomComponent />}
        </BasicPaper>
      </ResizableBox>
    </Box>
  );
}

const ResizeHandle = React.forwardRef((props, ref) => {
  const { handleAxis, ...restProps } = props;
  return (
    <Box
      ref={ref}
      {...restProps}
      sx={{
        position: 'absolute',
        top: '0',
        left: 'calc(100% - 5px)',
        width: '10px',
        height: '100%',
        '&:hover': {
          cursor: 'col-resize'
        }
      }}>
      <Box sx={{
        height: '100%',
        width: '4px',
        backgroundColor: 'white',
        margin: 'auto',
        border: '1px solid #076fad69',
        boxShadow: '0px 0px 3px #0779a6',
        boxSizing: 'border-box',
      }}>
        <Box sx={{
          position: 'relative',
          top: '50%',
          left: '50%',
          transform: 'translate(-50%, -50%)',
          fontSize: '15px',
          width: 'fit-content',
          lineHeight: 0,
          color: 'rgb(85, 120, 218)',
          backgroundColor: 'white',
          padding: '1px',
          border: '1px solid #076fad69',
          boxShadow: '0px 0px 4px #0779a6',
        }}>
          <i className="fa-sharp fa-solid fa-ellipsis-vertical"></i>
        </Box>
      </Box>
    </Box>
  );
});