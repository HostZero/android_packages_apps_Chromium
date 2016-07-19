.class public final Landroid/support/v4/app/aD;
.super Landroid/support/v4/app/aH;
.source "RemoteInput.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/CharSequence;

.field private final c:[Ljava/lang/CharSequence;

.field private final d:Z

.field private final e:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 254
    new-instance v0, Landroid/support/v4/app/aE;

    invoke-direct {v0}, Landroid/support/v4/app/aE;-><init>()V

    .line 263
    :goto_0
    new-instance v0, Landroid/support/v4/app/aI;

    invoke-direct {v0}, Landroid/support/v4/app/aI;-><init>()V

    return-void

    .line 255
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 256
    new-instance v0, Landroid/support/v4/app/aG;

    invoke-direct {v0}, Landroid/support/v4/app/aG;-><init>()V

    goto :goto_0

    .line 258
    :cond_1
    new-instance v0, Landroid/support/v4/app/aF;

    invoke-direct {v0}, Landroid/support/v4/app/aF;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v4/app/aD;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/app/aD;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final c()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v4/app/aD;->c:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/support/v4/app/aD;->d:Z

    return v0
.end method

.method public final e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/app/aD;->e:Landroid/os/Bundle;

    return-object v0
.end method
