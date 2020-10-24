void main() {
  
  var domainsInfo = {};
  var sample = [
    "Ahmad@KSU.edu.sa",
    "Ali@imamu.edu.sa",
    "salem@kau.edu.sa",
    "bandar@ksu.edu.sa"
  ];

  for (final i in sample) {
    // extract domain name, and adding +1 here to NOT include the @
    String domainName = i.substring((i.indexOf('@') + 1), i.indexOf('.')).toLowerCase();

    (!domainsInfo.containsKey(domainName)) ? domainsInfo[domainName] = 1 : domainsInfo[domainName] += domainsInfo[domainName]; 
  }
  
  //print(domainsInfo);  
  domainsInfo.forEach((dname, count) => print('${dname.toString().toUpperCase()} domain have ${count} email/s'));
  
}
