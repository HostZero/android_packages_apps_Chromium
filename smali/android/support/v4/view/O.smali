.class Landroid/support/v4/view/O;
.super Landroid/support/v4/view/N;
.source "MotionEventCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/support/v4/view/N;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 128
    .line 1026
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 128
    return v0
.end method
