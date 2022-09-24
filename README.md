# UpstreamAutoSynchronizer
This project is to run github action that automatically supports synchronization of open source repositories that I am interested and forked.<br>
The github action is scheduled to run every day at 00:00 and syncs my repo with the upstream repo I forked.

## Usage

If you want to use this synchronizer, you run below:

### 1. Fork this repository
For this repository for using this synchronizer.

### 2. Create github developer token
If you did not create a GitHub token, create it.
> Settings(github) -> Developer Settings > Personal access tokens -> Generate new token

### 3. Register developer token to repository actions secrets
You should register developer token to repository actions secrets as `PERSONAL_TOKEN`
> Settings(repository) -> Secrets -> Actions

### 4. Setup upstream & branch
Modify the script with the upstream and corresponding branch you want the corresponding branch.
```sh
repo_pairs=(
# ["Repository"]="branch name"
)
```


### Using component
- github action
- shell script
- github rest api
