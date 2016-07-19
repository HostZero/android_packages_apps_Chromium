.class final Landroid/support/v4/c/a/c;
.super Landroid/support/v4/c/a/a;
.source "DisplayManagerCompat.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/support/v4/c/a/a;-><init>()V

    .line 109
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    return-void
.end method
