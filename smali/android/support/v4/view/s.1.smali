.class Landroid/support/v4/view/s;
.super Landroid/support/v4/view/u;
.source "KeyEventCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/support/v4/view/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    .line 2025
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 131
    return-object v0
.end method

.method public final a(Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 121
    .line 1034
    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    .line 122
    return-void
.end method
