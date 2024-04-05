const api = async (url, props) => {
  const headers = { 'Content-Type': 'application/json' };
  const fetchProps = { headers, ...props };
  const result = await fetch(url, fetchProps);
  const json = await result.json();

  if (result.status !== 200) throw new Error(json.message);

  return json;
};

export default api;