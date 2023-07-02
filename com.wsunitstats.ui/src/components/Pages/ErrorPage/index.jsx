import { useLocation } from "react-router-dom";

export const ErrorPage = () => {
  const { state } = useLocation();
  
  return (
    <div style={{ textAlign: 'center'}}>
      <p>Something went wrong...</p>
      <p>Error {state.code}{state.msg && ': '}{state.msg}</p>
    </div>
  );
}