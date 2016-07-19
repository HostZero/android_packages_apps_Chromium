.class Landroid/support/v7/app/J;
.super Landroid/support/v7/app/I;
.source "AppCompatDelegateImplV14.java"


# instance fields
.field private r:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/D;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/I;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/D;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/J;->r:Z

    .line 30
    return-void
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Landroid/support/v7/app/K;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/K;-><init>(Landroid/support/v7/app/J;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/J;->r:Z

    .line 42
    return-void
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/support/v7/app/J;->r:Z

    return v0
.end method
