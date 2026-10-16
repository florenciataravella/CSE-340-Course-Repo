import Express from 'express';

import {showHomePage} from './controllers/index.js';
import {showCategoriesPage} from './controllers/categories.js';
import {showOrganizationsPage} from './controllers/organizations.js';
import {showProjectsPage} from './controllers/projects.js';
import {showErrorPage} from './controllers/errors.js';

const router = Express.Router();

router.get('/', showHomePage);
router.get('/categories', showCategoriesPage);
router.get('/organizations', showOrganizationsPage);
router.get('/projects', showProjectsPage);
router.get('/test-error', showErrorPage);

export default router;
