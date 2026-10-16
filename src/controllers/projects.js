

const showProjectsPage = async(req, res)=>{
    const title = 'Service Projects';
    const pageKey = 'projects';
    res.render('projects', { title, pageKey});
}

export {showProjectsPage};