function mapTemplateValue(templateArr, dynamicObj) {
  return templateArr.map(v => {
    if (v.startsWith('{') && v.endsWith('}')) {
      const key = v.replace(/[{}]/g, '');
      return dynamicObj[key] !== undefined ? dynamicObj[key] : v;
    }
    return v;
  });
}
module.exports = mapTemplateValue;