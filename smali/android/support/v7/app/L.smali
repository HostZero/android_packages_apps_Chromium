.class final Landroid/support/v7/app/L;
.super Landroid/support/v7/app/J;
.source "AppCompatDelegateImplV23.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/D;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/J;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/D;)V

    .line 27
    return-void
.end method


# virtual methods
.method final a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/support/v7/app/M;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/M;-><init>(Landroid/support/v7/app/L;Landroid/view/Window$Callback;)V

    return-object v0
.end method
