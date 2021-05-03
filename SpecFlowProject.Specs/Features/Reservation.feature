Feature: Reservation

@mytag
Scenario: Un client réserve une voiture avec la date de début et la date de fin de la location
	Given un client
	| nom    | prénom | Date de naissance | Date de permis  |
	| dupond | tom   | 5 janvier 1990    | 10 février 1999 |
	And la date de début et la date de fin de la location
	| date début     | date fin        |
	| 1 janvier 2022 | 10 janvier 2022 |
	And la liste des vehicules disponible
	| immatriculation | marque  | modèle | couleur | Prix reservation | Prix km |
	| aa-123-aa       | renault | clio 4 | gris    | 20               | 0.2     |
	When le client sélectionne un véhicule disponible
	Then la réservation est crée
	And le client rend la voiture, la facture avec le prix final est générée