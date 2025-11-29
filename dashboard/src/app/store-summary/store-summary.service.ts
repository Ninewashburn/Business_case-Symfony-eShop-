import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';
import { StoreSummary } from './store-summary';

@Injectable({
  providedIn: 'root'
})
export class StoreSummaryService {

  getStoreSummary(): Observable<StoreSummary[]> {
    return of([
      { title: "Total des ventes", value: "9465", isIncrease: true, color: "primary", percentValue: "0.5383", icon: "payments", isCurrency: true },
      { title: "Vente moyenne", value: "465", isIncrease: false, color: "accent", percentValue: "0.2544", icon: "local_atm", isCurrency: true },
      { title: "Total des commandes", value: "243", isIncrease: true, color: "warn", percentValue: "0.4565", icon: "shopping_cart", isCurrency: false },
      { title: "Fidélité client", value: "35", isIncrease: true, color: "primary", percentValue: "0.5361", icon: "portrait", isCurrency: false }
    ]);
  }

  constructor() { }
}
