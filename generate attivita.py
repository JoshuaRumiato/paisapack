import random
days = ["2026-05-06", "2026-05-07", "2026-05-08", "2026-05-09", "2026-05-10", "2026-05-11", "2026-05-12"]
cf_animatori = ["RSSMRC85H21H501D",
                "BNCGVN92A15D612H",
                "VRDFRC94B08C351K",
                "ROSSLA91D50C573F",
                "SFRNTN93E45B789L",
                "PLNNDR89E12D999Z"]
squadre = ["Aquile Rosse",
            "Tigri Blu",
            "Falchi Gialli",
            "Stelle Rosse",
            "Pantere Nere",
            "Leonesse d`Oro"]

def genera_routine():
    sql = []
    # SVEGLIA
    for day in days:
        data_ora_inizio= f"{day} 07:20:00"
        data_ora_fine= f"{day} 07:40:00"
        descrizione= "Sveglia animati"
        nome= "sveglia"
        codice_fiscale_animatore_supervisore=random.choice(cf_animatori)
        tipologia_routine= "sveglia"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{codice_fiscale_animatore_supervisore}', '{tipologia_routine}')")

    #att fisica
    for day in days:
        data_ora_inizio= f"{day} 07:40:00"
        data_ora_fine= f"{day} 07:45:00"
        descrizione= "Attività fisica"
        nome= "attivita fisica"
        codice_fiscale_animatore_supervisore=random.choice(cf_animatori)
        tipologia_routine= "attivita fisica"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{codice_fiscale_animatore_supervisore}', '{tipologia_routine}')")

    #att mattina
    for day in days:
        data_ora_inizio= f"{day} 09:30:00"
        data_ora_fine= f"{day} 11:30:00"
        descrizione= "Attività mattina"
        nome= "attivita mattina"
        codice_fiscale_animatore_supervisore=random.choice(cf_animatori)
        tipologia_routine= "attivita mattina"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{codice_fiscale_animatore_supervisore}', '{tipologia_routine}')")

    #gioco libero
    for day in days:
        data_ora_inizio= f"{day} 11:30:00"
        data_ora_fine= f"{day} 12:15:00"
        descrizione= "Gioco libero"
        nome= "gioco libero"
        codice_fiscale_animatore_supervisore=random.choice(cf_animatori)
        tipologia_routine= "gioco libero"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{codice_fiscale_animatore_supervisore}', '{tipologia_routine}')")
        data_ora_inizio= f"{day} 14:00:00"
        data_ora_fine= f"{day} 15:00:00"
        descrizione= "Gioco libero"
        nome= "gioco libero"
        codice_fiscale_animatore_supervisore=random.choice(cf_animatori)
        tipologia_routine= "gioco libero"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{codice_fiscale_animatore_supervisore}', '{tipologia_routine}')")
        data_ora_inizio= f"{day} 18:30:00"
        data_ora_fine= f"{day} 19:15:00"
        descrizione= "Gioco libero"
        nome= "gioco libero"
        codice_fiscale_animatore_supervisore=random.choice(cf_animatori)
        tipologia_routine= "gioco libero"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{codice_fiscale_animatore_supervisore}', '{tipologia_routine}')")

    #att pomeriggio
    for day in days:
        data_ora_inizio= f"{day} 15:00:00"
        data_ora_fine= f"{day} 17:00:00"
        descrizione= "Attività pomeriggio"
        nome= "attivita pomeriggio"
        codice_fiscale_animatore_supervisore=random.choice(cf_animatori)
        tipologia_routine= "attivita pomeriggio"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{codice_fiscale_animatore_supervisore}', '{tipologia_routine}')")

    #docce
    for day in days:
        data_ora_inizio= f"{day} 17:30:00"
        data_ora_fine= f"{day} 18:30:00"
        descrizione= "Doccia"
        nome= "doccia"
        codice_fiscale_animatore_supervisore=random.choice(cf_animatori)
        tipologia_routine= "doccia"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{codice_fiscale_animatore_supervisore}', '{tipologia_routine}')")

    #attività serale
    for day in days:
        data_ora_inizio= f"{day} 21:00:00"
        data_ora_fine= f"{day} 23:00:00"
        descrizione= "attivita serale"
        nome= "attivita serale"
        codice_fiscale_animatore_supervisore=random.choice(cf_animatori)
        tipologia_routine= "attivita serale"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{codice_fiscale_animatore_supervisore}', '{tipologia_routine}')")

    #verifica e resoconto della giornata
    for day in days:
        data_ora_inizio= f"{day} 23:00:00"
        data_ora_fine= f"{day} 23:30:00"
        descrizione= "verifica e resoconto della giornata"
        nome= "verifica e resoconto della giornata"
        codice_fiscale_animatore_supervisore=random.choice(cf_animatori)
        tipologia_routine= "verifica e resoconto della giornata"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{codice_fiscale_animatore_supervisore}', '{tipologia_routine}')")

    return sql

def genera_faccende():
    sql = []
    #apparecchiare colazione
    for day in days:
        data_ora_inizio= f"{day} 07:45:00"
        data_ora_fine= f"{day} 08:00:00"
        descrizione= "apparecchiare colazione"
        nome= "apparecchiare colazione"
        tipologia_routine= "preparazione tavoli colazione"
        nome_squadra = random.choice(squadre)
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{nome_squadra}', '{tipologia_routine}')")
    #sparecchiare colazione
    for day in days:
        data_ora_inizio= f"{day} 08:45:00"
        data_ora_fine= f"{day} 09:00:00"
        descrizione= "sparecchiare colazione"
        nome= "sparecchiare colazione"
        nome_squadra = random.choice(squadre)
        tipologia_routine= "spreparazione tavoli colazione"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{nome_squadra}', '{tipologia_routine}')")
    #pulizia stoviglie tavoli colazione
    for day in days:
        data_ora_inizio= f"{day} 09:00:00"
        data_ora_fine= f"{day} 09:30:00"
        descrizione= "pulizia stoviglie tavoli colazione"
        nome= "pulizia stoviglie tavoli colazione"
        tipologia_routine= "pulizia stoviglie tavoli colazione"
        tipologia_routine= "spreparazione tavoli colazione"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{nome_squadra}', '{tipologia_routine}')")

    #apparecchiare pranzo
    for day in days:
        data_ora_inizio= f"{day} 12:15:00"
        data_ora_fine= f"{day} 12:30:00"
        descrizione= "apparecchiare pranzo"
        nome= "apparecchiare pranzo"
        tipologia_routine= "preparazione tavoli pranzo"
        tipologia_routine= "spreparazione tavoli colazione"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{nome_squadra}', '{tipologia_routine}')")
    #sparecchiare pranzo
    for day in days:
        data_ora_inizio= f"{day} 13:30:00"
        data_ora_fine= f"{day} 13:45:00"
        descrizione= "sparecchiare pranzo"
        nome= "sparecchiare pranzo"
        tipologia_routine= "spreparazione tavoli pranzo"
        tipologia_routine= "spreparazione tavoli colazione"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{nome_squadra}', '{tipologia_routine}')")
    #pulizia stoviglie tavoli pranzo
    for day in days:
        data_ora_inizio= f"{day} 13:45:00"
        data_ora_fine= f"{day} 14:00:00"
        descrizione= "pulizia stoviglie tavoli pranzo"
        nome= "pulizia stoviglie tavoli pranzo"
        tipologia_routine= "pulizia stoviglie tavoli pranzo"
        tipologia_routine= "spreparazione tavoli colazione"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{nome_squadra}', '{tipologia_routine}')")

    #apparecchiare cena
    for day in days:
        data_ora_inizio= f"{day} 19:15:00"
        data_ora_fine= f"{day} 19:30:00"
        descrizione= "apparecchiare cena"
        nome= "apparecchiare cena"
        tipologia_routine= "preparazione tavoli cena"
        tipologia_routine= "spreparazione tavoli colazione"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{nome_squadra}', '{tipologia_routine}')")
    #sparecchiare cena
    for day in days:
        data_ora_inizio= f"{day} 20:30:00"
        data_ora_fine= f"{day} 20:45:00"
        descrizione= "sparecchiare cena"
        nome= "sparecchiare cena"
        tipologia_routine= "spreparazione tavoli cena"
        tipologia_routine= "spreparazione tavoli colazione"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{nome_squadra}', '{tipologia_routine}')")
    #pulizia stoviglie tavoli cena
    for day in days:
        data_ora_inizio= f"{day} 20:45:00"
        data_ora_fine= f"{day} 21:00:00"
        descrizione= "pulizia stoviglie tavoli cena"
        nome= "pulizia stoviglie tavoli cena"
        tipologia_routine= "pulizia stoviglie tavoli cena"
        tipologia_routine= "spreparazione tavoli colazione"
        sql.append(f"('{data_ora_inizio}', '{data_ora_fine}', '{descrizione}', '{nome}', '{nome_squadra}', '{tipologia_routine}')")

    return sql

print(",\n".join(sorted(genera_faccende()))+';')