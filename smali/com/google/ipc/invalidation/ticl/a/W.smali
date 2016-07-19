.class public final Lcom/google/ipc/invalidation/ticl/a/W;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:I

.field private final b:Lcom/google/ipc/invalidation/b/c;

.field private final c:Lcom/google/ipc/invalidation/ticl/a/M;

.field private final d:I


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/M;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 1151
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1152
    const-string/jumbo v0, "client_type"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/W;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1153
    const-string/jumbo v0, "client_type"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/W;->a(Ljava/lang/String;I)V

    .line 1154
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/W;->a:I

    .line 1155
    const-string/jumbo v0, "nonce"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/W;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1156
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/W;->b:Lcom/google/ipc/invalidation/b/c;

    .line 1157
    const-string/jumbo v0, "application_client_id"

    invoke-static {v0, p3}, Lcom/google/ipc/invalidation/ticl/a/W;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1158
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/W;->c:Lcom/google/ipc/invalidation/ticl/a/M;

    .line 1159
    const-string/jumbo v0, "digest_serialization_type"

    invoke-static {v0, p4}, Lcom/google/ipc/invalidation/ticl/a/W;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1160
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/W;->d:I

    .line 1161
    return-void
.end method

.method public static a(ILcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/M;I)Lcom/google/ipc/invalidation/ticl/a/W;
    .locals 3

    .prologue
    .line 1140
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/W;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/ipc/invalidation/ticl/a/W;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/M;Ljava/lang/Integer;)V

    return-object v0
.end method

.method static a(Lcom/google/a/a/a/a/p;)Lcom/google/ipc/invalidation/ticl/a/W;
    .locals 5

    .prologue
    .line 1210
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1211
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/W;

    iget-object v1, p0, Lcom/google/a/a/a/a/p;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/a/a/a/a/p;->b:[B

    invoke-static {v2}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/a/a/a/a/p;->c:Lcom/google/a/a/a/a/g;

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/M;->a(Lcom/google/a/a/a/a/g;)Lcom/google/ipc/invalidation/ticl/a/M;

    move-result-object v3

    iget-object v4, p0, Lcom/google/a/a/a/a/p;->d:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ipc/invalidation/ticl/a/W;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/M;Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/google/a/a/a/a/p;
    .locals 2

    .prologue
    .line 1222
    new-instance v0, Lcom/google/a/a/a/a/p;

    invoke-direct {v0}, Lcom/google/a/a/a/a/p;-><init>()V

    .line 1223
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/W;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/p;->a:Ljava/lang/Integer;

    .line 1224
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/W;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/p;->b:[B

    .line 1225
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/W;->c:Lcom/google/ipc/invalidation/ticl/a/M;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/M;->d()Lcom/google/a/a/a/a/g;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/p;->c:Lcom/google/a/a/a/a/g;

    .line 1226
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/W;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/p;->d:Ljava/lang/Integer;

    .line 1227
    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 1191
    const-string/jumbo v0, "<InitializeMessage:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1192
    const-string/jumbo v0, " client_type="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/W;->a:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 1193
    const-string/jumbo v0, " nonce="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/W;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1194
    const-string/jumbo v0, " application_client_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/W;->c:Lcom/google/ipc/invalidation/ticl/a/M;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1195
    const-string/jumbo v0, " digest_serialization_type="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/W;->d:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 1196
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1197
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 1183
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/W;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 1184
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/W;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1185
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/W;->c:Lcom/google/ipc/invalidation/ticl/a/M;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/M;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1186
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/W;->d:I

    add-int/2addr v0, v1

    .line 1187
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1172
    if-ne p0, p1, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return v0

    .line 1173
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/W;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1174
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/W;

    .line 1175
    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/W;->a:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/W;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/W;->b:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/W;->b:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/W;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/W;->c:Lcom/google/ipc/invalidation/ticl/a/M;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/W;->c:Lcom/google/ipc/invalidation/ticl/a/M;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/W;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/W;->d:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/W;->d:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
