class alldata {
  final double? updated;
  final int? cases;
  final int? todayCases;
  final int? deaths;
  final int? todayDeaths;
  final int? recovered;
  final int? todayRecovered;
  final int? active;
  final int? critical;
  final int? casesPerOneMillion;
  final double? deathsPerOneMillion;
  final double? tests;
  final double? testsPerOneMillion;
  final double? population;
  final int? oneCasePerPeople;
  final int? oneDeathPerPeople;
  final int? oneTestPerPeople;
  final double? activePerOneMillion;
  final double? recoveredPerOneMillion;
  final double? criticalPerOneMillion;
  final int? affectedCountries;
  const alldata(
      {this.updated,
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.todayRecovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.tests,
      this.testsPerOneMillion,
      this.population,
      this.oneCasePerPeople,
      this.oneDeathPerPeople,
      this.oneTestPerPeople,
      this.activePerOneMillion,
      this.recoveredPerOneMillion,
      this.criticalPerOneMillion,
      this.affectedCountries});
  alldata copyWith(
      {double? updated,
      int? cases,
      int? todayCases,
      int? deaths,
      int? todayDeaths,
      int? recovered,
      int? todayRecovered,
      int? active,
      int? critical,
      int? casesPerOneMillion,
      double? deathsPerOneMillion,
      double? tests,
      double? testsPerOneMillion,
      double? population,
      int? oneCasePerPeople,
      int? oneDeathPerPeople,
      int? oneTestPerPeople,
      double? activePerOneMillion,
      double? recoveredPerOneMillion,
      double? criticalPerOneMillion,
      int? affectedCountries}) {
    return alldata(
        updated: updated ?? this.updated,
        cases: cases ?? this.cases,
        todayCases: todayCases ?? this.todayCases,
        deaths: deaths ?? this.deaths,
        todayDeaths: todayDeaths ?? this.todayDeaths,
        recovered: recovered ?? this.recovered,
        todayRecovered: todayRecovered ?? this.todayRecovered,
        active: active ?? this.active,
        critical: critical ?? this.critical,
        casesPerOneMillion: casesPerOneMillion ?? this.casesPerOneMillion,
        deathsPerOneMillion: deathsPerOneMillion ?? this.deathsPerOneMillion,
        tests: tests ?? this.tests,
        testsPerOneMillion: testsPerOneMillion ?? this.testsPerOneMillion,
        population: population ?? this.population,
        oneCasePerPeople: oneCasePerPeople ?? this.oneCasePerPeople,
        oneDeathPerPeople: oneDeathPerPeople ?? this.oneDeathPerPeople,
        oneTestPerPeople: oneTestPerPeople ?? this.oneTestPerPeople,
        activePerOneMillion: activePerOneMillion ?? this.activePerOneMillion,
        recoveredPerOneMillion:
            recoveredPerOneMillion ?? this.recoveredPerOneMillion,
        criticalPerOneMillion:
            criticalPerOneMillion ?? this.criticalPerOneMillion,
        affectedCountries: affectedCountries ?? this.affectedCountries);
  }

  Map<String, Object?> toJson() {
    return {
      'updated': updated,
      'cases': cases,
      'todayCases': todayCases,
      'deaths': deaths,
      'todayDeaths': todayDeaths,
      'recovered': recovered,
      'todayRecovered': todayRecovered,
      'active': active,
      'critical': critical,
      'casesPerOneMillion': casesPerOneMillion,
      'deathsPerOneMillion': deathsPerOneMillion,
      'tests': tests,
      'testsPerOneMillion': testsPerOneMillion,
      'population': population,
      'oneCasePerPeople': oneCasePerPeople,
      'oneDeathPerPeople': oneDeathPerPeople,
      'oneTestPerPeople': oneTestPerPeople,
      'activePerOneMillion': activePerOneMillion,
      'recoveredPerOneMillion': recoveredPerOneMillion,
      'criticalPerOneMillion': criticalPerOneMillion,
      'affectedCountries': affectedCountries
    };
  }

  static alldata fromJson(Map<String, Object?> json) {
    return alldata(
        updated: json['updated'] == null ? null : json['updated'] as double,
        cases: json['cases'] == null ? null : json['cases'] as int,
        todayCases:
            json['todayCases'] == null ? null : json['todayCases'] as int,
        deaths: json['deaths'] == null ? null : json['deaths'] as int,
        todayDeaths:
            json['todayDeaths'] == null ? null : json['todayDeaths'] as int,
        recovered: json['recovered'] == null ? null : json['recovered'] as int,
        todayRecovered: json['todayRecovered'] == null
            ? null
            : json['todayRecovered'] as int,
        active: json['active'] == null ? null : json['active'] as int,
        critical: json['critical'] == null ? null : json['critical'] as int,
        casesPerOneMillion: json['casesPerOneMillion'] == null
            ? null
            : json['casesPerOneMillion'] as int,
        deathsPerOneMillion: json['deathsPerOneMillion'] == null
            ? null
            : json['deathsPerOneMillion'] as double,
        tests: json['tests'] == null ? null : json['tests'] as double,
        testsPerOneMillion: json['testsPerOneMillion'] == null
            ? null
            : json['testsPerOneMillion'] as double,
        population:
            json['population'] == null ? null : json['population'] as double,
        oneCasePerPeople: json['oneCasePerPeople'] == null
            ? null
            : json['oneCasePerPeople'] as int,
        oneDeathPerPeople: json['oneDeathPerPeople'] == null
            ? null
            : json['oneDeathPerPeople'] as int,
        oneTestPerPeople: json['oneTestPerPeople'] == null
            ? null
            : json['oneTestPerPeople'] as int,
        activePerOneMillion: json['activePerOneMillion'] == null
            ? null
            : json['activePerOneMillion'] as double,
        recoveredPerOneMillion: json['recoveredPerOneMillion'] == null
            ? null
            : json['recoveredPerOneMillion'] as double,
        criticalPerOneMillion: json['criticalPerOneMillion'] == null
            ? null
            : json['criticalPerOneMillion'] as double,
        affectedCountries: json['affectedCountries'] == null
            ? null
            : json['affectedCountries'] as int);
  }

  @override
  String toString() {
    return '''AutoGeneratedClassName(
                updated:$updated,
cases:$cases,
todayCases:$todayCases,
deaths:$deaths,
todayDeaths:$todayDeaths,
recovered:$recovered,
todayRecovered:$todayRecovered,
active:$active,
critical:$critical,
casesPerOneMillion:$casesPerOneMillion,
deathsPerOneMillion:$deathsPerOneMillion,
tests:$tests,
testsPerOneMillion:$testsPerOneMillion,
population:$population,
oneCasePerPeople:$oneCasePerPeople,
oneDeathPerPeople:$oneDeathPerPeople,
oneTestPerPeople:$oneTestPerPeople,
activePerOneMillion:$activePerOneMillion,
recoveredPerOneMillion:$recoveredPerOneMillion,
criticalPerOneMillion:$criticalPerOneMillion,
affectedCountries:$affectedCountries
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is alldata &&
        other.runtimeType == runtimeType &&
        other.updated == updated &&
        other.cases == cases &&
        other.todayCases == todayCases &&
        other.deaths == deaths &&
        other.todayDeaths == todayDeaths &&
        other.recovered == recovered &&
        other.todayRecovered == todayRecovered &&
        other.active == active &&
        other.critical == critical &&
        other.casesPerOneMillion == casesPerOneMillion &&
        other.deathsPerOneMillion == deathsPerOneMillion &&
        other.tests == tests &&
        other.testsPerOneMillion == testsPerOneMillion &&
        other.population == population &&
        other.oneCasePerPeople == oneCasePerPeople &&
        other.oneDeathPerPeople == oneDeathPerPeople &&
        other.oneTestPerPeople == oneTestPerPeople &&
        other.activePerOneMillion == activePerOneMillion &&
        other.recoveredPerOneMillion == recoveredPerOneMillion &&
        other.criticalPerOneMillion == criticalPerOneMillion &&
        other.affectedCountries == affectedCountries;
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        updated,
        cases,
        todayCases,
        deaths,
        todayDeaths,
        recovered,
        todayRecovered,
        active,
        critical,
        casesPerOneMillion,
        deathsPerOneMillion,
        tests,
        testsPerOneMillion,
        population,
        oneCasePerPeople,
        oneDeathPerPeople,
        oneTestPerPeople,
        activePerOneMillion,
        recoveredPerOneMillion);
  }
}
