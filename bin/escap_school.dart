import 'dart:io';

main() {
  gameTitle();
  levelOneTitle();
  levelTwo();
  levelThree();
  endGame();
}

makeSpace(int spaces) {
  for (int index = 0; index < spaces; index++) {
    print(" ");
  }
}

gameTitle() {
  makeSpace(2);
  print("😎   Ethics Test   😎");
  makeSpace(2);
  print("press q,Q to exit ");
  quitGame();
}

levelOneTitle() {
  print("level 1");
  printToday();
  print("You are walking in one of the halls of the university,");
  print("someone walks in front of you fell 1000 dollars from him");
  levelOne();
}

levelOne() {
  print("no one can see you,");
  print("what do you do  1#(take the money), 2#(calls him ), 3#(ignore it):");
  String option1 = stdin.readLineSync()!;
  switch (option1) {
    case "1":
      print(" you were arrested 👮🏻");

      quitGame();
      break;
    case "2":
      print("you are a good person");
      makeSpace(2);
      levelTwo();
      break;
    case "3":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelOne();
      break;
  }

  makeSpace(2);
}

levelTwo() {
  print("level 2");
  print("He was pleased with your behaviour");
  print("He asked you for caffee");
  print("what do you choose ? y#(yes), n(no)");

  String option1 = stdin.readLineSync()!;
  switch (option1) {
    case "y":
      print(" you like the idea");
      levelThree();
      break;
    case "n":
      print("you dont like the idea");
      makeSpace(2);
      quitGame();
      break;
      makeSpace(2);
  }
}

levelThree() {
  print("level 3");
  print("He give part of the money");
  win();
}

endGame() {
  makeSpace(2);
  print("######### The End #########");
  makeSpace(2);
}

printToday() {
  print(
      "${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}");
}

quitGame() {
  endGame();
  exit(0);
}

win() {
  makeSpace(1);
  print("🎉🎉🎉🎉🎉🎉🎉🎉and you won new frind 🎉🎉🎉🎉🎉🎉🎉🎉");
  makeSpace(1);
  quitGame();
}
