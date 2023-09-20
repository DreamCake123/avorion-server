var AWS = require('aws-sdk');
exports.handler = function(event, context) {
  var ec2 = new AWS.EC2({region: 'us-west-2'}); 
  ec2.stopInstances({InstanceIds: ['i-XXXXXXXXX']}, function(err, data) { 
    if (err) {
      console.log("Could not stop instances", err);
      return context.done(err, null);
    }
    console.log("Stopped instances: " + JSON.stringify(data));
    context.done(null, data);
  });
};
