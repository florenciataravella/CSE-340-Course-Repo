

const  showHomePage = async(req, res)=>{
    const title = 'Home';
    res.render('home', { title, pageKey: 'home' });
};
export {showHomePage};