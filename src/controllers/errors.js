// Test route for 500 errors


const showErrorPage= async(req, res, next) =>{
    const err = newError('This is a test error');
    error.status = 500;
    next(err);
};
 
export {showErrorPage};
