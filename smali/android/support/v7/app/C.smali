.class public Landroid/support/v7/app/C;
.super Landroid/support/v4/app/w;
.source "AppCompatActivity.java"

# interfaces
.implements Landroid/support/v4/app/aM;
.implements Landroid/support/v7/app/D;
.implements Landroid/support/v7/app/f;


# instance fields
.field private mDelegate:Landroid/support/v7/app/E;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/w;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/E;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void
.end method

.method public getDelegate()Landroid/support/v7/app/E;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Landroid/support/v7/app/C;->mDelegate:Landroid/support/v7/app/E;

    if-nez v0, :cond_0

    .line 456
    invoke-static {p0, p0}, Landroid/support/v7/app/E;->a(Landroid/app/Activity;Landroid/support/v7/app/D;)Landroid/support/v7/app/E;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/C;->mDelegate:Landroid/support/v7/app/E;

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/C;->mDelegate:Landroid/support/v7/app/E;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Landroid/support/v7/app/e;
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/E;->i()Landroid/support/v7/app/e;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/E;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/E;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 374
    invoke-static {p0}, Landroid/support/v4/app/Q;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/E;->g()V

    .line 199
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/w;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/E;->a(Landroid/content/res/Configuration;)V

    .line 131
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 413
    invoke-virtual {p0}, Landroid/support/v7/app/C;->onSupportContentChanged()V

    .line 414
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/E;->j()V

    .line 60
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/E;->c()V

    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/w;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/aL;)V
    .locals 0

    .prologue
    .line 292
    invoke-virtual {p1, p0}, Landroid/support/v4/app/aL;->a(Landroid/app/Activity;)Landroid/support/v4/app/aL;

    .line 293
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/support/v4/app/w;->onDestroy()V

    .line 162
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/E;->h()V

    .line 163
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/w;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 152
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Landroid/support/v7/app/C;->onSupportNavigateUp()Z

    move-result v0

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 437
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/w;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .prologue
    .line 448
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/w;->onPanelClosed(ILandroid/view/Menu;)V

    .line 449
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/w;->onPostCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/E;->d()V

    .line 68
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/support/v4/app/w;->onPostResume()V

    .line 142
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/E;->f()V

    .line 143
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/aL;)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/w;->onStop()V

    .line 136
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/E;->e()V

    .line 137
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/c/a;)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/c/a;)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 421
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p0, v0}, Landroid/support/v7/app/C;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-static {p0}, Landroid/support/v4/app/aL;->a(Landroid/content/Context;)Landroid/support/v4/app/aL;

    move-result-object v0

    .line 342
    invoke-virtual {p0, v0}, Landroid/support/v7/app/C;->onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/aL;)V

    .line 343
    invoke-virtual {p0, v0}, Landroid/support/v7/app/C;->onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/aL;)V

    .line 344
    invoke-virtual {v0}, Landroid/support/v4/app/aL;->a()V

    .line 347
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    const/4 v0, 0x1

    .line 360
    :goto_1
    return v0

    .line 351
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v7/app/C;->finish()V

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/app/C;->supportNavigateUpTo(Landroid/content/Intent;)V

    goto :goto_0

    .line 360
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/w;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 168
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/E;->a(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/E;->a(I)V

    .line 110
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/E;->a(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/E;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/E;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 100
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/E;->g()V

    .line 192
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 407
    invoke-static {p0, p1}, Landroid/support/v4/app/Q;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/support/v7/app/C;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/E;->b(I)Z

    move-result v0

    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 391
    invoke-static {p0, p1}, Landroid/support/v4/app/Q;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
