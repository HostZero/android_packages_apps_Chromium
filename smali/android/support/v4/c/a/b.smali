.class final Landroid/support/v4/c/a/b;
.super Landroid/support/v4/c/a/a;
.source "DisplayManagerCompat.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/support/v4/c/a/a;-><init>()V

    .line 1024
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    return-void
.end method
