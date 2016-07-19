.class Landroid/support/v4/view/af;
.super Landroid/support/v4/view/ag;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1317
    invoke-direct {p0}, Landroid/support/v4/view/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public final D(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1320
    .line 2030
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    .line 1320
    return v0
.end method
