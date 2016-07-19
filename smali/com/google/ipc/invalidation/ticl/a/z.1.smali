.class public final Lcom/google/ipc/invalidation/ticl/a/z;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/ticl/a/aa;

.field private final b:Z

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1144
    const-string/jumbo v0, "object_id"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1145
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/z;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 1146
    const-string/jumbo v0, "transient"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1147
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/z;->b:Z

    .line 1148
    const-string/jumbo v0, "message"

    invoke-static {v0, p3}, Lcom/google/ipc/invalidation/ticl/a/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1149
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/z;->c:Ljava/lang/String;

    .line 1150
    return-void
.end method

.method static a(Lcom/google/a/a/a/z;)Lcom/google/ipc/invalidation/ticl/a/z;
    .locals 4

    .prologue
    .line 1194
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1195
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/z;

    iget-object v1, p0, Lcom/google/a/a/a/z;->a:Lcom/google/a/a/a/a/s;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/a/z;->b:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/a/a/a/z;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ipc/invalidation/ticl/a/z;-><init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/aa;ZLjava/lang/String;)Lcom/google/ipc/invalidation/ticl/a/z;
    .locals 2

    .prologue
    .line 1134
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/z;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/google/ipc/invalidation/ticl/a/z;-><init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/ticl/a/aa;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/z;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 1176
    const-string/jumbo v0, "<RegistrationFailureUpcall:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1177
    const-string/jumbo v0, " object_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/z;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1178
    const-string/jumbo v0, " transient="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/z;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 1179
    const-string/jumbo v0, " message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1180
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1181
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/z;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1170
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/z;->b:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/z;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 1171
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/z;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1172
    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1154
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/z;->b:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/z;->c:Ljava/lang/String;

    return-object v0
.end method

.method final e()Lcom/google/a/a/a/z;
    .locals 2

    .prologue
    .line 1205
    new-instance v0, Lcom/google/a/a/a/z;

    invoke-direct {v0}, Lcom/google/a/a/a/z;-><init>()V

    .line 1206
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/z;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/aa;->d()Lcom/google/a/a/a/a/s;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/z;->a:Lcom/google/a/a/a/a/s;

    .line 1207
    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/z;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/z;->b:Ljava/lang/Boolean;

    .line 1208
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/z;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/a/a/a/z;->c:Ljava/lang/String;

    .line 1209
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1159
    if-ne p0, p1, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return v0

    .line 1160
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/z;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1161
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/z;

    .line 1162
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/z;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/z;->a:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/z;->b:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/z;->b:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/z;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/z;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
