.class Landroid/support/v7/app/K;
.super Landroid/support/v7/app/H;
.source "AppCompatDelegateImplV14.java"


# instance fields
.field private synthetic a:Landroid/support/v7/app/J;


# direct methods
.method constructor <init>(Landroid/support/v7/app/J;Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Landroid/support/v7/app/K;->a:Landroid/support/v7/app/J;

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/H;-><init>(Landroid/support/v7/app/F;Landroid/view/Window$Callback;)V

    .line 52
    return-void
.end method


# virtual methods
.method final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 5

    .prologue
    .line 70
    new-instance v0, Landroid/support/v7/internal/view/d;

    iget-object v1, p0, Landroid/support/v7/app/K;->a:Landroid/support/v7/app/J;

    iget-object v1, v1, Landroid/support/v7/app/J;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/internal/view/d;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 74
    iget-object v1, p0, Landroid/support/v7/app/K;->a:Landroid/support/v7/app/J;

    .line 1638
    iget-object v2, v1, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    if-eqz v2, :cond_0

    .line 1639
    iget-object v2, v1, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    invoke-virtual {v2}, Landroid/support/v7/c/a;->c()V

    .line 1642
    :cond_0
    new-instance v2, Landroid/support/v7/app/W;

    invoke-direct {v2, v1, v0}, Landroid/support/v7/app/W;-><init>(Landroid/support/v7/app/N;Landroid/support/v7/c/b;)V

    .line 1644
    invoke-virtual {v1}, Landroid/support/v7/app/N;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    .line 1645
    if-eqz v3, :cond_1

    .line 1646
    invoke-virtual {v3, v2}, Landroid/support/v7/app/ActionBar;->a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    .line 1647
    iget-object v3, v1, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/support/v7/app/N;->e:Landroid/support/v7/app/D;

    if-eqz v3, :cond_1

    .line 1648
    iget-object v3, v1, Landroid/support/v7/app/N;->e:Landroid/support/v7/app/D;

    iget-object v4, v1, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    invoke-interface {v3, v4}, Landroid/support/v7/app/D;->onSupportActionModeStarted(Landroid/support/v7/c/a;)V

    .line 1652
    :cond_1
    iget-object v3, v1, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    if-nez v3, :cond_2

    .line 1654
    invoke-virtual {v1, v2}, Landroid/support/v7/app/N;->a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    .line 1657
    :cond_2
    iget-object v1, v1, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    .line 77
    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/d;->b(Landroid/support/v7/c/a;)Landroid/view/ActionMode;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/K;->a:Landroid/support/v7/app/J;

    invoke-virtual {v0}, Landroid/support/v7/app/J;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Landroid/support/v7/app/K;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/H;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method
