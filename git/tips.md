# Tips

## References
 - [Pro Git book](https://git-scm.com/book/en/v2)

## Prerequisites
 - [git](https://git-scm.com/)
 
## Tips
 1. Setup user : based on [Git configuration](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)
  - local user
    ```
    $ cd {your_repository_directory}
    $ git config --local user.name "your name"
    $ git config --local user.email "your_name@example.com"
    ```
  - global user
    ```
    $ git config --global user.name "your name"
    $ git config --global user.email "your_name@example.com"
   ```   ```
  - check updates
    ```
    $ git config --list
    ```