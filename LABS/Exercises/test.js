function algor(lst) {
  let lwrlst = [];
  let grtrlst = [];
  lst.forEach(element => {
    let el = element.split(">");
    lwrlst.push(el[0]);
    grtrlst.push(el[1]);
  });
  // console.log(lwrlst);
  // let last = lwrlst.find(el=>(el === !grtrlst.forEach()))
  let last = lwrlst.forEach(el => {
    return grtrlst.forEach(element => element !== el);
  });
  // console.log(last);
}

// algor(["P>E", "R>U", "E>R"]);
algor(["P>A", "I>N", "A>I", "S>P"]);
