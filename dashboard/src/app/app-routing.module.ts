import { DashComponent } from './dash/dash.component';

import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { SalesComponent } from './sales/sales.component';


const routes: Routes = [
  { path: '', component: DashComponent },
  { path: 'dashboard', component: DashComponent },
  { path: 'ventes', component: SalesComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
