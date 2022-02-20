aws ec2 run-instances \
   --image-id ami-033b95fb8079dc481 \
   --count 1 \
   --instance-type t2.micro \
   --key-name firstkey \
   --security-groups ssh+http \
   --user-data file:///Users/leylakose/Desktop/aws_projects/Project-001-Roman-Numerals-Converter/roman-numerals-converter-app.sh