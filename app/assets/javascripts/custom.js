
$(document)
  .foundation({
    abide : {
      patterns: {
        password: /^(?=.*\d).{4,8}$/,
      }
    }
  });