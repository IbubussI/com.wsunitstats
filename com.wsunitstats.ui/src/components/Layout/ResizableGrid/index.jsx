import * as React from 'react';
import { Box, Grid, debounce } from "@mui/material";
import { BasicPaper } from "components/Atoms/BasicPaper";
import { ResizableBox } from 'react-resizable';

export const ResizableGrid = ({ children, minWidth, columnWidth, paddingTop, staticBottom: StaticBottomComponent }) => {
  const [maxWidth, setMaxWidth] = React.useState(0);
  const [width, setWidth] = React.useState(0);
  const containerRef = React.useRef(null);
  const contentRef = React.useRef(null);
  const [gridCols, setGridCols] = React.useState(12);

  React.useLayoutEffect(() => {
    setMaxWidth(containerRef.current.clientWidth);
    setWidth(columnWidth);

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
  }, [gridCols, columnWidth, children.length]);

  const resizeHandler = React.useCallback(
    () => {
      setMaxWidth(containerRef.current.clientWidth);
    },
    [],
  );

  const debouncedResizeHandler = React.useMemo(
    () => debounce(resizeHandler, 300),
    [resizeHandler],
  );

  React.useEffect(() => {
    window.addEventListener("resize", debouncedResizeHandler);
    // Initial update
    resizeHandler();
    return () => {
      window.removeEventListener("resize", debouncedResizeHandler);
    }
  }, [debouncedResizeHandler, resizeHandler]);

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