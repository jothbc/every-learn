const api = async (url, props) => {
  const token = window.user?.token ? `Bearer ${window.user.token}` : null;
  let headers = {};
  if(token)[
    headers = {...headers, 'Authorization': token }
  ]
  if(!props || !props.body || typeof props.body === 'string'){
    headers = {...headers, 'Content-Type': 'application/json' }
  }
  const fetchProps = { headers, ...props };
  const result = await fetch(url, fetchProps);
  const json = await result.json();

  if (result.status !== 200) throw new Error(json.message);

  return json;
};

export default api;