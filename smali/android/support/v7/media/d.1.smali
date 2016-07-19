.class public final Landroid/support/v7/media/d;
.super Ljava/lang/Object;
.source "MediaRouteDiscoveryRequest.java"


# instance fields
.field private final a:Landroid/os/Bundle;

.field private b:Landroid/support/v7/media/e;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/support/v7/media/d;->a:Landroid/os/Bundle;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/media/e;Z)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/d;->a:Landroid/os/Bundle;

    .line 46
    iput-object p1, p0, Landroid/support/v7/media/d;->b:Landroid/support/v7/media/e;

    .line 47
    iget-object v0, p0, Landroid/support/v7/media/d;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "selector"

    invoke-virtual {p1}, Landroid/support/v7/media/e;->d()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Landroid/support/v7/media/d;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "activeScan"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Landroid/support/v7/media/d;
    .locals 1

    .prologue
    .line 130
    if-eqz p0, :cond_0

    new-instance v0, Landroid/support/v7/media/d;

    invoke-direct {v0, p0}, Landroid/support/v7/media/d;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/media/d;->b:Landroid/support/v7/media/e;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Landroid/support/v7/media/d;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/e;->a(Landroid/os/Bundle;)Landroid/support/v7/media/e;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/d;->b:Landroid/support/v7/media/e;

    .line 66
    iget-object v0, p0, Landroid/support/v7/media/d;->b:Landroid/support/v7/media/e;

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Landroid/support/v7/media/e;->a:Landroid/support/v7/media/e;

    iput-object v0, p0, Landroid/support/v7/media/d;->b:Landroid/support/v7/media/e;

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/media/e;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v7/media/d;->e()V

    .line 60
    iget-object v0, p0, Landroid/support/v7/media/d;->b:Landroid/support/v7/media/e;

    return-object v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/media/d;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "activeScan"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/support/v7/media/d;->e()V

    .line 86
    iget-object v0, p0, Landroid/support/v7/media/d;->b:Landroid/support/v7/media/e;

    invoke-virtual {v0}, Landroid/support/v7/media/e;->c()Z

    move-result v0

    return v0
.end method

.method public final d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v7/media/d;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    instance-of v1, p1, Landroid/support/v7/media/d;

    if-eqz v1, :cond_0

    .line 92
    check-cast p1, Landroid/support/v7/media/d;

    .line 93
    invoke-virtual {p0}, Landroid/support/v7/media/d;->a()Landroid/support/v7/media/e;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/media/d;->a()Landroid/support/v7/media/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/media/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/media/d;->b()Z

    move-result v1

    invoke-virtual {p1}, Landroid/support/v7/media/d;->b()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 96
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/support/v7/media/d;->a()Landroid/support/v7/media/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/e;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/media/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string/jumbo v1, "DiscoveryRequest{ selector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/d;->a()Landroid/support/v7/media/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v1, ", activeScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/d;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v1, ", isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/d;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
