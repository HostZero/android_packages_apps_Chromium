.class public final Lcom/google/ipc/invalidation/ticl/a/A;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/ticl/a/aa;

.field private final b:Z


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 1070
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1071
    const-string/jumbo v0, "object_id"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/A;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1072
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/A;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 1073
    const-string/jumbo v0, "is_registered"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/A;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1074
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/A;->b:Z

    .line 1075
    return-void
.end method

.method static a(Lcom/google/a/a/a/A;)Lcom/google/ipc/invalidation/ticl/a/A;
    .locals 3

    .prologue
    .line 1114
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1115
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/A;

    iget-object v1, p0, Lcom/google/a/a/a/A;->a:Lcom/google/a/a/a/a/s;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/a/A;->b:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/A;-><init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/aa;Z)Lcom/google/ipc/invalidation/ticl/a/A;
    .locals 2

    .prologue
    .line 1063
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/A;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/ipc/invalidation/ticl/a/A;-><init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/ticl/a/aa;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/A;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 1097
    const-string/jumbo v0, "<RegistrationStatusUpcall:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1098
    const-string/jumbo v0, " object_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/A;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1099
    const-string/jumbo v0, " is_registered="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/A;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 1100
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1101
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/A;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1092
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/A;->b:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/A;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 1093
    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1079
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/A;->b:Z

    return v0
.end method

.method final d()Lcom/google/a/a/a/A;
    .locals 2

    .prologue
    .line 1124
    new-instance v0, Lcom/google/a/a/a/A;

    invoke-direct {v0}, Lcom/google/a/a/a/A;-><init>()V

    .line 1125
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/A;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/aa;->d()Lcom/google/a/a/a/a/s;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/A;->a:Lcom/google/a/a/a/a/s;

    .line 1126
    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/A;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/A;->b:Ljava/lang/Boolean;

    .line 1127
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1082
    if-ne p0, p1, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return v0

    .line 1083
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/A;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1084
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/A;

    .line 1085
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/A;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/A;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/A;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/A;->b:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/A;->b:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
