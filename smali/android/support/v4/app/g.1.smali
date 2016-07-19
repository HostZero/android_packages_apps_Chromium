.class final Landroid/support/v4/app/g;
.super Landroid/support/v4/app/d;
.source "ActivityOptionsCompat.java"


# instance fields
.field private final a:Landroid/support/v4/app/f;


# direct methods
.method constructor <init>(Landroid/support/v4/app/f;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/support/v4/app/d;-><init>()V

    .line 181
    iput-object p1, p0, Landroid/support/v4/app/g;->a:Landroid/support/v4/app/f;

    .line 182
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v4/app/g;->a:Landroid/support/v4/app/f;

    invoke-virtual {v0}, Landroid/support/v4/app/f;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
