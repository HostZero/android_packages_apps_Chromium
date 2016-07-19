.class public final Lcom/google/ipc/invalidation/ticl/aa;
.super Lcom/google/ipc/invalidation/b/h;
.source "Statistics.java"


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/util/Map;

.field private static final d:Ljava/util/Map;

.field private static final e:Ljava/util/Map;


# instance fields
.field private final f:Ljava/util/Map;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/util/Map;

.field private final i:Ljava/util/Map;

.field private final j:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/google/ipc/invalidation/ticl/af;->values()[Lcom/google/ipc/invalidation/ticl/af;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/aa;->a([Ljava/lang/Enum;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/aa;->a:Ljava/util/Map;

    .line 143
    invoke-static {}, Lcom/google/ipc/invalidation/ticl/ac;->values()[Lcom/google/ipc/invalidation/ticl/ac;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/aa;->a([Ljava/lang/Enum;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/aa;->b:Ljava/util/Map;

    .line 144
    invoke-static {}, Lcom/google/ipc/invalidation/ticl/ae;->values()[Lcom/google/ipc/invalidation/ticl/ae;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/aa;->a([Ljava/lang/Enum;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/aa;->c:Ljava/util/Map;

    .line 146
    invoke-static {}, Lcom/google/ipc/invalidation/ticl/ad;->values()[Lcom/google/ipc/invalidation/ticl/ad;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/aa;->a([Ljava/lang/Enum;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/aa;->d:Ljava/util/Map;

    .line 148
    invoke-static {}, Lcom/google/ipc/invalidation/ticl/ab;->values()[Lcom/google/ipc/invalidation/ticl/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/aa;->a([Ljava/lang/Enum;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/aa;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/h;-><init>()V

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->f:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->g:Ljava/util/Map;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->h:Ljava/util/Map;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->i:Ljava/util/Map;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->j:Ljava/util/Map;

    .line 165
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->f:Ljava/util/Map;

    invoke-static {}, Lcom/google/ipc/invalidation/ticl/af;->values()[Lcom/google/ipc/invalidation/ticl/af;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->g:Ljava/util/Map;

    invoke-static {}, Lcom/google/ipc/invalidation/ticl/ae;->values()[Lcom/google/ipc/invalidation/ticl/ae;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->h:Ljava/util/Map;

    invoke-static {}, Lcom/google/ipc/invalidation/ticl/ac;->values()[Lcom/google/ipc/invalidation/ticl/ac;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;[Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->i:Ljava/util/Map;

    invoke-static {}, Lcom/google/ipc/invalidation/ticl/ad;->values()[Lcom/google/ipc/invalidation/ticl/ad;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;[Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->j:Ljava/util/Map;

    invoke-static {}, Lcom/google/ipc/invalidation/ticl/ab;->values()[Lcom/google/ipc/invalidation/ticl/ab;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;[Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public static a(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/aa;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 301
    new-instance v1, Lcom/google/ipc/invalidation/ticl/aa;

    invoke-direct {v1}, Lcom/google/ipc/invalidation/ticl/aa;-><init>()V

    .line 304
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/ab;

    .line 305
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ab;->a()Ljava/lang/String;

    move-result-object v3

    .line 306
    const-string/jumbo v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 307
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 308
    const-string/jumbo v0, "Perf counter name must of form: class.value, skipping: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v7

    invoke-interface {p0, v0, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    :cond_0
    aget-object v3, v4, v7

    .line 312
    aget-object v4, v4, v8

    .line 313
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ab;->c()I

    move-result v0

    .line 316
    const-string/jumbo v5, "SentMessageType"

    invoke-static {v3, v5}, Landroid/support/customtabs/a;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 317
    sget-object v3, Lcom/google/ipc/invalidation/ticl/aa;->a:Ljava/util/Map;

    iget-object v5, v1, Lcom/google/ipc/invalidation/ticl/aa;->f:Ljava/util/Map;

    invoke-static {p0, v3, v5, v4, v0}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_0

    .line 319
    :cond_1
    const-string/jumbo v5, "IncomingOperationType"

    invoke-static {v3, v5}, Landroid/support/customtabs/a;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 320
    sget-object v3, Lcom/google/ipc/invalidation/ticl/aa;->b:Ljava/util/Map;

    iget-object v5, v1, Lcom/google/ipc/invalidation/ticl/aa;->h:Ljava/util/Map;

    invoke-static {p0, v3, v5, v4, v0}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_0

    .line 322
    :cond_2
    const-string/jumbo v5, "ReceivedMessageType"

    invoke-static {v3, v5}, Landroid/support/customtabs/a;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 323
    sget-object v3, Lcom/google/ipc/invalidation/ticl/aa;->c:Ljava/util/Map;

    iget-object v5, v1, Lcom/google/ipc/invalidation/ticl/aa;->g:Ljava/util/Map;

    invoke-static {p0, v3, v5, v4, v0}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_0

    .line 325
    :cond_3
    const-string/jumbo v5, "ListenerEventType"

    invoke-static {v3, v5}, Landroid/support/customtabs/a;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 326
    sget-object v3, Lcom/google/ipc/invalidation/ticl/aa;->d:Ljava/util/Map;

    iget-object v5, v1, Lcom/google/ipc/invalidation/ticl/aa;->i:Ljava/util/Map;

    invoke-static {p0, v3, v5, v4, v0}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_0

    .line 328
    :cond_4
    const-string/jumbo v5, "ClientErrorType"

    invoke-static {v3, v5}, Landroid/support/customtabs/a;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 329
    sget-object v3, Lcom/google/ipc/invalidation/ticl/aa;->e:Ljava/util/Map;

    iget-object v5, v1, Lcom/google/ipc/invalidation/ticl/aa;->j:Ljava/util/Map;

    invoke-static {p0, v3, v5, v4, v0}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 332
    :cond_5
    const-string/jumbo v0, "Skipping unknown enum class name %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v7

    invoke-interface {p0, v0, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 335
    :cond_6
    return-object v1
.end method

.method private static a([Ljava/lang/Enum;)Ljava/util/Map;
    .locals 5

    .prologue
    .line 255
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 256
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 257
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-object v1
.end method

.method private static a(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 345
    .line 2041
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 345
    check-cast v0, Ljava/lang/Enum;

    .line 346
    if-eqz v0, :cond_0

    .line 3041
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 347
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 348
    add-int/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    const-string/jumbo v0, "Skipping unknown enum value name %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-interface {p0, v0, v1}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 264
    .line 1041
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 247
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/Map;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 269
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 270
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-virtual {p0, v0}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/List;)V

    .line 278
    const-string/jumbo v1, "Client Statistics: %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/ipc/invalidation/b/r;

    .line 279
    return-void
.end method

.method public final a(Lcom/google/ipc/invalidation/ticl/ab;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->j:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public final a(Lcom/google/ipc/invalidation/ticl/ac;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->h:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public final a(Lcom/google/ipc/invalidation/ticl/ad;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->i:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public final a(Lcom/google/ipc/invalidation/ticl/ae;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->g:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public final a(Lcom/google/ipc/invalidation/ticl/af;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->f:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->f:Ljava/util/Map;

    const-string/jumbo v1, "SentMessageType"

    invoke-static {v0, p1, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->g:Ljava/util/Map;

    const-string/jumbo v1, "ReceivedMessageType"

    invoke-static {v0, p1, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->h:Ljava/util/Map;

    const-string/jumbo v1, "IncomingOperationType"

    invoke-static {v0, p1, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->i:Ljava/util/Map;

    const-string/jumbo v1, "ListenerEventType"

    invoke-static {v0, p1, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/aa;->j:Ljava/util/Map;

    const-string/jumbo v1, "ClientErrorType"

    invoke-static {v0, p1, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 240
    return-void
.end method
