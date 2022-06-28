# Database-Design440
 

Project High Level Description

In the project, you would be required to create a project in the format of a Vanilla script (a SQL file that creates database objects with the schema in the third normal form), that will include tables, foreign keys, indexes, views, and stored procedures. I will ask you to insert data into it. You may use tools besides SSMS to insert data.

The description will evolve and will include the acceptance criteria and a simple grading matrix.

Here please find the original specification for the MODEL upon which to build the Schema ( collection of tables and keys).

PRODUCT DESCRIPTION

Any software product, besides high-level description, is defined in terms of features.
These features evolve along with the business. They can be added, upgraded, and deprecated.
A current version of the product will have a current set of features (usually described in a manual).
As business/product evolves, new features appear and current may change. In order to deliver these new features to a customer, developers develop the features and then deploy/release them on certain defined and declared schedule.
The scope for the upcoming release, thus, includes a set of features. Some features can get deprecated, but it is not an easy process. In order to deprecate the feature, usually, the company makes an announcement and promises support and backward compatibility (you still can use the feature) till the pre-defined date of deprecation.
Up to release, the version of the software code is considered a "development" branch. Upon the release, it goes into production and it remains in the maintenance mode there, while the company also initiates the development of a new version with a planned and announced set of other features.
While the product is in maintenance, customers can find some deficiencies, bugs, etc. and they can file tickets about these deficiencies, bugs, or simply suggestions.
There is usually a  person(s) in a company who are responsible for product development. They are called Product Managers. Their job is to
analyze the tickets,
compare current implementation to a suggested one or that of competitors,
create fix descriptions or new feature descriptions,
submit them for approval to other stakeholders and the budgeting committee
upon approval, prioritize them for the new releases.
Product managers insert these prioritized features into the product log along with the datetime reported, categories (bug, improvement, or new feature), dependencies on other features, and ticket number.
There might be more than one product, one product manager per product and team, in one company.
We will be developing a release management system schema / database based on the description above.
I am only interested in product evolution schema: Product, Version, Release (with notes), Features, Bugs, Enhancements.
No people, roles, or development process/ environment.
