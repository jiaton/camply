docker run --rm  \
  --name jt-search \
  --env TZ="America/Vancouver" \
  --env TELEGRAM_BOT_TOKEN="7365388073:AAEZsl7wLnvVvbOJaK7Lgpaf0nrWfcCLmCc" \
  --env TELEGRAM_CHAT_ID="493222881" \
  --volume ${PWD}/example_search.yaml:/home/camply/example_search.yaml \
  --volume ${PWD}/example.camply:/home/camply/.camply \
  juftin/camply:latest \
  camply campsites \
      --yaml-config /home/camply/example_search.yaml

## local build docker
docker run --rm  \
  --name jt-search-local-build-docker \
  --env TZ="America/Vancouver" \
  --env TELEGRAM_BOT_TOKEN="7365388073:AAEZsl7wLnvVvbOJaK7Lgpaf0nrWfcCLmCc" \
  --env TELEGRAM_CHAT_ID="493222881" \
  --volume ${PWD}/example_search.yaml:/home/camply/example_search.yaml \
  --volume ${PWD}/example.camply:/home/camply/.camply \
  camply:latest \
  camply campsites \
      --yaml-config /home/camply/example_search.yaml

## test noti
docker run --rm  \
  --name jt-search \
  --env TZ="America/Vancouver" \
  --env TELEGRAM_BOT_TOKEN="7365388073:AAEZsl7wLnvVvbOJaK7Lgpaf0nrWfcCLmCc" \
  --env TELEGRAM_CHAT_ID="493222881" \
  --volume ${PWD}/example_search.yaml:/home/camply/example_search.yaml \
  --volume ${PWD}/example.camply:/home/camply/.camply \
  juftin/camply:latest \   
  camply test-notifications --notifications telegram