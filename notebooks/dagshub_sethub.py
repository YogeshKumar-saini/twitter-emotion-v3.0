import dagshub
import mlflow

mlflow.set_tracking_uri('https://dagshub.com/YogeshKumar-saini/twitter-emotion-v3.0.mlflow')
dagshub.init(repo_owner='YogeshKumar-saini', repo_name='twitter-emotion-v3.0', mlflow=True)


with mlflow.start_run():
  mlflow.log_param('parameter name', 'value')
  mlflow.log_metric('metric name', 1)

