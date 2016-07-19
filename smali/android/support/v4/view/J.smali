.class final Landroid/support/v4/view/J;
.super Landroid/support/v4/view/I;
.source "MenuItemCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/support/v4/view/I;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 203
    .line 1024
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v0

    .line 203
    return v0
.end method

.method public final c(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 213
    .line 1032
    invoke-interface {p1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    .line 213
    return v0
.end method
