import * as React from 'react';
import * as Utils from "utils/utils";
import * as Constants from "utils/constants";
import { useParams, useSearchParams } from 'react-router-dom';
import InfiniteScroll from 'react-infinite-scroller';

export const TestScroller = ({ initial }) => {
  const [searchParams] = useSearchParams();
  const params = useParams();
  const [items, setItems] = React.useState(initial);
  const [hasMore, setHasMore] = React.useState(true);
  const [index, setIndex] = React.useState(2);
  
  const fetchMoreData = () => {
    const requestSearchParams = new URLSearchParams(searchParams);
    requestSearchParams.set('locale', params.locale);
    requestSearchParams.set('page', index);
    requestSearchParams.set('size', 20);
    
    const fetchUrl = Constants.HOST + Constants.UNIT_OPTIONS_API + '?' + requestSearchParams;
    Utils.fetchJson(fetchUrl, (received) => {
      setItems((prevItems) => [...prevItems, ...received]);
      setIndex((prevIndex) => prevIndex + 1);
      received.length > 0 ? setHasMore(true) : setHasMore(false);
    });
  };

  return (
    <InfiniteScroll
      loadMore={fetchMoreData}
      hasMore={hasMore}
    >
      <div className='container'>
        <div className='row'>
          {items &&
            items.map((item) => <div key={item.id}>{item.name}</div>)}
        </div>
      </div>
    </InfiniteScroll>
  );
}