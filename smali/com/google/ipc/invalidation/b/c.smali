.class public final Lcom/google/ipc/invalidation/b/c;
.super Lcom/google/ipc/invalidation/b/h;
.source "Bytes.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lcom/google/ipc/invalidation/b/c;

.field private static final b:Lcom/google/ipc/invalidation/b/f;

.field private static final c:Lcom/google/ipc/invalidation/b/l;

.field private static final d:[C

.field private static final e:[C

.field private static final f:[C


# instance fields
.field private final g:[B

.field private volatile h:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v6, 0x100

    .line 34
    new-instance v0, Lcom/google/ipc/invalidation/b/c;

    new-array v2, v1, [B

    invoke-direct {v0, v2}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    sput-object v0, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    .line 35
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 46
    new-instance v0, Lcom/google/ipc/invalidation/b/d;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/b/d;-><init>()V

    sput-object v0, Lcom/google/ipc/invalidation/b/c;->b:Lcom/google/ipc/invalidation/b/f;

    .line 56
    new-instance v0, Lcom/google/ipc/invalidation/b/e;

    invoke-direct {v0}, Lcom/google/ipc/invalidation/b/e;-><init>()V

    sput-object v0, Lcom/google/ipc/invalidation/b/c;->c:Lcom/google/ipc/invalidation/b/l;

    .line 73
    new-array v0, v6, [C

    sput-object v0, Lcom/google/ipc/invalidation/b/c;->d:[C

    .line 74
    new-array v0, v6, [C

    sput-object v0, Lcom/google/ipc/invalidation/b/c;->e:[C

    .line 75
    new-array v0, v6, [C

    sput-object v0, Lcom/google/ipc/invalidation/b/c;->f:[C

    move v0, v1

    .line 86
    :goto_0
    if-ge v0, v6, :cond_0

    .line 87
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v3, "\\%03o"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 88
    sget-object v3, Lcom/google/ipc/invalidation/b/c;->d:[C

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v3, v0

    .line 89
    sget-object v3, Lcom/google/ipc/invalidation/b/c;->e:[C

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v3, v0

    .line 90
    sget-object v3, Lcom/google/ipc/invalidation/b/c;->f:[C

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v3, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/h;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ipc/invalidation/b/c;->h:I

    .line 95
    iput-object p1, p0, Lcom/google/ipc/invalidation/b/c;->g:[B

    .line 96
    return-void
.end method

.method public static a([B[B)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 250
    sget-object v1, Lcom/google/ipc/invalidation/b/c;->b:Lcom/google/ipc/invalidation/b/f;

    .line 1259
    if-nez p0, :cond_1

    .line 1260
    if-nez p1, :cond_0

    .line 1272
    :goto_0
    return v0

    .line 1260
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1262
    :cond_1
    if-nez p1, :cond_2

    .line 1263
    const/4 v0, 0x1

    goto :goto_0

    .line 1266
    :cond_2
    invoke-interface {v1, p0}, Lcom/google/ipc/invalidation/b/f;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, p1}, Lcom/google/ipc/invalidation/b/f;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1267
    :goto_1
    if-ge v0, v2, :cond_4

    .line 1269
    invoke-interface {v1, p0, v0}, Lcom/google/ipc/invalidation/b/f;->a(Ljava/lang/Object;I)B

    move-result v3

    invoke-interface {v1, p1, v0}, Lcom/google/ipc/invalidation/b/f;->a(Ljava/lang/Object;I)B

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1270
    invoke-interface {v1, p0, v0}, Lcom/google/ipc/invalidation/b/f;->a(Ljava/lang/Object;I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1271
    invoke-interface {v1, p1, v0}, Lcom/google/ipc/invalidation/b/f;->a(Ljava/lang/Object;I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1272
    sub-int v0, v2, v0

    goto :goto_0

    .line 1267
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1279
    :cond_4
    invoke-interface {v1, p0}, Lcom/google/ipc/invalidation/b/f;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1, p1}, Lcom/google/ipc/invalidation/b/f;->a(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a([B)Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 242
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/b/c;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/b/r;[B)Lcom/google/ipc/invalidation/b/r;
    .locals 5

    .prologue
    const/16 v4, 0x5c

    .line 303
    sget-object v2, Lcom/google/ipc/invalidation/b/c;->b:Lcom/google/ipc/invalidation/b/f;

    .line 1323
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2, p1}, Lcom/google/ipc/invalidation/b/f;->a(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1324
    invoke-interface {v2, p1, v0}, Lcom/google/ipc/invalidation/b/f;->a(Ljava/lang/Object;I)B

    move-result v1

    .line 1325
    sparse-switch v1, :sswitch_data_0

    .line 1332
    const/16 v3, 0x20

    if-lt v1, v3, :cond_0

    const/16 v3, 0x7f

    if-ge v1, v3, :cond_0

    const/16 v3, 0x27

    if-eq v1, v3, :cond_0

    .line 1333
    int-to-char v1, v1

    invoke-virtual {p0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1323
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1326
    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    goto :goto_1

    .line 1327
    :sswitch_1
    invoke-virtual {p0, v4}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    goto :goto_1

    .line 1328
    :sswitch_2
    invoke-virtual {p0, v4}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    const/16 v1, 0x74

    invoke-virtual {p0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    goto :goto_1

    .line 1329
    :sswitch_3
    invoke-virtual {p0, v4}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    goto :goto_1

    .line 1330
    :sswitch_4
    invoke-virtual {p0, v4}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    invoke-virtual {p0, v4}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    goto :goto_1

    .line 1336
    :cond_0
    if-gez v1, :cond_1

    .line 1337
    add-int/lit16 v1, v1, 0x100

    .line 1339
    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1340
    sget-object v3, Lcom/google/ipc/invalidation/b/c;->d:[C

    aget-char v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1341
    sget-object v3, Lcom/google/ipc/invalidation/b/c;->e:[C

    aget-char v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1342
    sget-object v3, Lcom/google/ipc/invalidation/b/c;->f:[C

    aget-char v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    goto :goto_1

    .line 303
    :cond_2
    return-object p0

    .line 1325
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_3
        0x5c -> :sswitch_4
    .end sparse-switch
.end method

.method public static b([B)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 310
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 311
    :cond_0
    const-string/jumbo v0, ""

    .line 313
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/ipc/invalidation/b/c;->c:Lcom/google/ipc/invalidation/b/l;

    invoke-static {p0, v0}, Lcom/google/ipc/invalidation/b/i;->a(Ljava/lang/Object;Lcom/google/ipc/invalidation/b/l;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/c;->g:[B

    array-length v0, v0

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/c;->g:[B

    invoke-static {p1, v0}, Lcom/google/ipc/invalidation/b/c;->a(Lcom/google/ipc/invalidation/b/r;[B)Lcom/google/ipc/invalidation/b/r;

    .line 296
    return-void
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/c;->g:[B

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 32
    check-cast p1, Lcom/google/ipc/invalidation/b/c;

    .line 2238
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/c;->g:[B

    iget-object v1, p1, Lcom/google/ipc/invalidation/b/c;->g:[B

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/b/c;->a([B[B)I

    move-result v0

    .line 32
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 168
    if-ne p1, p0, :cond_0

    .line 169
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    .line 172
    :cond_0
    instance-of v0, p1, Lcom/google/ipc/invalidation/b/c;

    if-nez v0, :cond_1

    .line 173
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :cond_1
    check-cast p1, Lcom/google/ipc/invalidation/b/c;

    .line 177
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/c;->g:[B

    iget-object v1, p1, Lcom/google/ipc/invalidation/b/c;->g:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 181
    iget v0, p0, Lcom/google/ipc/invalidation/b/c;->h:I

    .line 184
    if-nez v0, :cond_2

    .line 185
    iget-object v4, p0, Lcom/google/ipc/invalidation/b/c;->g:[B

    .line 186
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/c;->g:[B

    array-length v2, v0

    .line 189
    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 190
    mul-int/lit8 v0, v0, 0x1f

    aget-byte v3, v4, v1

    add-int/2addr v3, v0

    .line 189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 192
    :cond_0
    if-nez v0, :cond_1

    .line 193
    const/4 v0, 0x1

    .line 196
    :cond_1
    iput v0, p0, Lcom/google/ipc/invalidation/b/c;->h:I

    .line 199
    :cond_2
    return v0
.end method
