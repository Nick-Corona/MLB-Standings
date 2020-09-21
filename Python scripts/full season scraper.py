from urllib.request import urlopen
from bs4 import BeautifulSoup
import pandas as pd
import numpy as np

july = [23, 24, 25, 26, 27, 28, 29, 30]
month = 7
day = 23
for day in july:

    url = "https://www.baseball-reference.com/boxes/?month=" + str(month) + "&day=" + str(day) + "&year=2020"
    html = urlopen(url)
    soup = BeautifulSoup(html)

    AL_East = pd.DataFrame(columns=headers)
    table = soup.find("table", {"id": "standings-upto-AL-E"})

    AL_East.at[0, "Team"] = table.find_all("tr")[1].th.a.get_text()
    AL_East.at[0, "Wins"] = table.find_all("tr")[1].find("td", {"data-stat": "W"}).get_text()
    AL_East.at[0, "Loses"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "L"}).get_text()
    AL_East.at[0, "Win%"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_East.at[0, "GB"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "games_back"}).get_text()

    AL_East.at[1, "Team"] = table.find_all("tr")[2].th.a.get_text()
    AL_East.at[1, "Wins"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "W"}).get_text()
    AL_East.at[1, "Loses"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "L"}).get_text()
    AL_East.at[1, "Win%"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_East.at[1, "GB"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "games_back"}).get_text()

    AL_East.at[2, "Team"] = table.find_all("tr")[3].th.a.get_text()
    AL_East.at[2, "Wins"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "W"}).get_text()
    AL_East.at[2, "Loses"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "L"}).get_text()
    AL_East.at[2, "Win%"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_East.at[2, "GB"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "games_back"}).get_text()

    AL_East.at[3, "Team"] = table.find_all("tr")[4].th.a.get_text()
    AL_East.at[3, "Wins"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "W"}).get_text()
    AL_East.at[3, "Loses"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "L"}).get_text()
    AL_East.at[3, "Win%"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_East.at[3, "GB"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "games_back"}).get_text()

    AL_East.at[4, "Team"] = table.find_all("tr")[5].th.a.get_text()
    AL_East.at[4, "Wins"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "W"}).get_text()
    AL_East.at[4, "Loses"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "L"}).get_text()
    AL_East.at[4, "Win%"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_East.at[4, "GB"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "games_back"}).get_text()

    AL_Central = pd.DataFrame(columns=headers)

    table = soup.find("table", {"id": "standings-upto-AL-C"})

    AL_Central.at[0, "Team"] = table.find_all("tr")[1].th.a.get_text()
    AL_Central.at[0, "Wins"] = table.find_all("tr")[1].find("td", {"data-stat": "W"}).get_text()
    AL_Central.at[0, "Loses"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "L"}).get_text()
    AL_Central.at[0, "Win%"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_Central.at[0, "GB"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "games_back"}).get_text()

    AL_Central.at[1, "Team"] = table.find_all("tr")[2].th.a.get_text()
    AL_Central.at[1, "Wins"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "W"}).get_text()
    AL_Central.at[1, "Loses"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "L"}).get_text()
    AL_Central.at[1, "Win%"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_Central.at[1, "GB"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "games_back"}).get_text()

    AL_Central.at[2, "Team"] = table.find_all("tr")[3].th.a.get_text()
    AL_Central.at[2, "Wins"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "W"}).get_text()
    AL_Central.at[2, "Loses"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "L"}).get_text()
    AL_Central.at[2, "Win%"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_Central.at[2, "GB"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "games_back"}).get_text()

    AL_Central.at[3, "Team"] = table.find_all("tr")[4].th.a.get_text()
    AL_Central.at[3, "Wins"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "W"}).get_text()
    AL_Central.at[3, "Loses"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "L"}).get_text()
    AL_Central.at[3, "Win%"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_Central.at[3, "GB"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "games_back"}).get_text()

    AL_Central.at[4, "Team"] = table.find_all("tr")[5].th.a.get_text()
    AL_Central.at[4, "Wins"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "W"}).get_text()
    AL_Central.at[4, "Loses"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "L"}).get_text()
    AL_Central.at[4, "Win%"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_Central.at[4, "GB"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "games_back"}).get_text()

    AL_West = pd.DataFrame(columns=headers)

    table = soup.find("table", {"id": "standings-upto-AL-W"})

    AL_West.at[0, "Team"] = table.find_all("tr")[1].th.a.get_text()
    AL_West.at[0, "Wins"] = table.find_all("tr")[1].find("td", {"data-stat": "W"}).get_text()
    AL_West.at[0, "Loses"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "L"}).get_text()
    AL_West.at[0, "Win%"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_West.at[0, "GB"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "games_back"}).get_text()

    AL_West.at[1, "Team"] = table.find_all("tr")[2].th.a.get_text()
    AL_West.at[1, "Wins"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "W"}).get_text()
    AL_West.at[1, "Loses"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "L"}).get_text()
    AL_West.at[1, "Win%"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_West.at[1, "GB"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "games_back"}).get_text()

    AL_West.at[2, "Team"] = table.find_all("tr")[3].th.a.get_text()
    AL_West.at[2, "Wins"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "W"}).get_text()
    AL_West.at[2, "Loses"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "L"}).get_text()
    AL_West.at[2, "Win%"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_West.at[2, "GB"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "games_back"}).get_text()

    AL_West.at[3, "Team"] = table.find_all("tr")[4].th.a.get_text()
    AL_West.at[3, "Wins"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "W"}).get_text()
    AL_West.at[3, "Loses"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "L"}).get_text()
    AL_West.at[3, "Win%"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_West.at[3, "GB"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "games_back"}).get_text()

    AL_West.at[4, "Team"] = table.find_all("tr")[5].th.a.get_text()
    AL_West.at[4, "Wins"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "W"}).get_text()
    AL_West.at[4, "Loses"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "L"}).get_text()
    AL_West.at[4, "Win%"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    AL_West.at[4, "GB"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_East = pd.DataFrame(columns=headers)
    table = soup.find("table", {"id": "standings-upto-NL-E"})

    NL_East.at[0, "Team"] = table.find_all("tr")[1].th.a.get_text()
    NL_East.at[0, "Wins"] = table.find_all("tr")[1].find("td", {"data-stat": "W"}).get_text()
    NL_East.at[0, "Loses"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "L"}).get_text()
    NL_East.at[0, "Win%"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_East.at[0, "GB"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_East.at[1, "Team"] = table.find_all("tr")[2].th.a.get_text()
    NL_East.at[1, "Wins"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "W"}).get_text()
    NL_East.at[1, "Loses"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "L"}).get_text()
    NL_East.at[1, "Win%"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_East.at[1, "GB"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_East.at[2, "Team"] = table.find_all("tr")[3].th.a.get_text()
    NL_East.at[2, "Wins"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "W"}).get_text()
    NL_East.at[2, "Loses"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "L"}).get_text()
    NL_East.at[2, "Win%"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_East.at[2, "GB"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_East.at[3, "Team"] = table.find_all("tr")[4].th.a.get_text()
    NL_East.at[3, "Wins"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "W"}).get_text()
    NL_East.at[3, "Loses"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "L"}).get_text()
    NL_East.at[3, "Win%"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_East.at[3, "GB"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_East.at[4, "Team"] = table.find_all("tr")[5].th.a.get_text()
    NL_East.at[4, "Wins"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "W"}).get_text()
    NL_East.at[4, "Loses"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "L"}).get_text()
    NL_East.at[4, "Win%"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_East.at[4, "GB"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_Central = pd.DataFrame(columns=headers)

    table = soup.find("table", {"id": "standings-upto-NL-C"})

    NL_Central.at[0, "Team"] = table.find_all("tr")[1].th.a.get_text()
    NL_Central.at[0, "Wins"] = table.find_all("tr")[1].find("td", {"data-stat": "W"}).get_text()
    NL_Central.at[0, "Loses"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "L"}).get_text()
    NL_Central.at[0, "Win%"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_Central.at[0, "GB"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_Central.at[1, "Team"] = table.find_all("tr")[2].th.a.get_text()
    NL_Central.at[1, "Wins"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "W"}).get_text()
    NL_Central.at[1, "Loses"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "L"}).get_text()
    NL_Central.at[1, "Win%"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_Central.at[1, "GB"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_Central.at[2, "Team"] = table.find_all("tr")[3].th.a.get_text()
    NL_Central.at[2, "Wins"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "W"}).get_text()
    NL_Central.at[2, "Loses"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "L"}).get_text()
    NL_Central.at[2, "Win%"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_Central.at[2, "GB"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_Central.at[3, "Team"] = table.find_all("tr")[4].th.a.get_text()
    NL_Central.at[3, "Wins"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "W"}).get_text()
    NL_Central.at[3, "Loses"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "L"}).get_text()
    NL_Central.at[3, "Win%"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_Central.at[3, "GB"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_Central.at[4, "Team"] = table.find_all("tr")[5].th.a.get_text()
    NL_Central.at[4, "Wins"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "W"}).get_text()
    NL_Central.at[4, "Loses"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "L"}).get_text()
    NL_Central.at[4, "Win%"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_Central.at[4, "GB"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_West = pd.DataFrame(columns=headers)

    table = soup.find("table", {"id": "standings-upto-NL-W"})

    NL_West.at[0, "Team"] = table.find_all("tr")[1].th.a.get_text()
    NL_West.at[0, "Wins"] = table.find_all("tr")[1].find("td", {"data-stat": "W"}).get_text()
    NL_West.at[0, "Loses"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "L"}).get_text()
    NL_West.at[0, "Win%"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_West.at[0, "GB"] = table.find_all("tr")[1].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_West.at[1, "Team"] = table.find_all("tr")[2].th.a.get_text()
    NL_West.at[1, "Wins"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "W"}).get_text()
    NL_West.at[1, "Loses"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "L"}).get_text()
    NL_West.at[1, "Win%"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_West.at[1, "GB"] = table.find_all("tr")[2].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_West.at[2, "Team"] = table.find_all("tr")[3].th.a.get_text()
    NL_West.at[2, "Wins"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "W"}).get_text()
    NL_West.at[2, "Loses"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "L"}).get_text()
    NL_West.at[2, "Win%"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_West.at[2, "GB"] = table.find_all("tr")[3].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_West.at[3, "Team"] = table.find_all("tr")[4].th.a.get_text()
    NL_West.at[3, "Wins"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "W"}).get_text()
    NL_West.at[3, "Loses"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "L"}).get_text()
    NL_West.at[3, "Win%"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_West.at[3, "GB"] = table.find_all("tr")[4].find("td", attrs={"data-stat": "games_back"}).get_text()

    NL_West.at[4, "Team"] = table.find_all("tr")[5].th.a.get_text()
    NL_West.at[4, "Wins"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "W"}).get_text()
    NL_West.at[4, "Loses"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "L"}).get_text()
    NL_West.at[4, "Win%"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "win_loss_perc"}).get_text()
    NL_West.at[4, "GB"] = table.find_all("tr")[5].find("td", attrs={"data-stat": "games_back"}).get_text()

    if len(str(day)) < 2:
        date = "070" + str(day) + "20"
    if len(str(day)) == 2:
        date = "07" + str(day) + "20"

    AL_East.to_csv("AL_East." + date + ".csv")
    AL_Central.to_csv("AL_Central." + date + ".csv")
    AL_West.to_csv("AL_West." + date + ".csv")

    NL_East.to_csv("NL_East." + date + ".csv")
    NL_Central.to_csv("NL_Central." + date + ".csv")
    NL_West.to_csv("NL_West." + date + ".csv")