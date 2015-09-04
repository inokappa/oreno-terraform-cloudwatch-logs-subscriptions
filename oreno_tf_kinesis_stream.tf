#
# Create Kinesis Stream
#
resource "aws_kinesis_stream" "stream" {
  name = "my-flow-log"
  shard_count = 1
}
