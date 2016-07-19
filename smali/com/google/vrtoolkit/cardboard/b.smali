.class public final enum Lcom/google/vrtoolkit/cardboard/b;
.super Ljava/lang/Enum;
.source "CardboardDeviceParams.java"


# static fields
.field public static final enum a:Lcom/google/vrtoolkit/cardboard/b;

.field public static final enum b:Lcom/google/vrtoolkit/cardboard/b;

.field private static enum c:Lcom/google/vrtoolkit/cardboard/b;

.field private static final synthetic e:[Lcom/google/vrtoolkit/cardboard/b;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 450
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b;

    const-string/jumbo v1, "BOTTOM"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/vrtoolkit/cardboard/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/vrtoolkit/cardboard/b;->a:Lcom/google/vrtoolkit/cardboard/b;

    .line 452
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b;

    const-string/jumbo v1, "CENTER"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/vrtoolkit/cardboard/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/vrtoolkit/cardboard/b;->b:Lcom/google/vrtoolkit/cardboard/b;

    .line 454
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b;

    const-string/jumbo v1, "TOP"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/vrtoolkit/cardboard/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/vrtoolkit/cardboard/b;->c:Lcom/google/vrtoolkit/cardboard/b;

    .line 448
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/vrtoolkit/cardboard/b;

    sget-object v1, Lcom/google/vrtoolkit/cardboard/b;->a:Lcom/google/vrtoolkit/cardboard/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/vrtoolkit/cardboard/b;->b:Lcom/google/vrtoolkit/cardboard/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/vrtoolkit/cardboard/b;->c:Lcom/google/vrtoolkit/cardboard/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/vrtoolkit/cardboard/b;->e:[Lcom/google/vrtoolkit/cardboard/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 459
    iput p3, p0, Lcom/google/vrtoolkit/cardboard/b;->d:I

    .line 460
    return-void
.end method

.method static a(I)Lcom/google/vrtoolkit/cardboard/b;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 465
    invoke-static {}, Lcom/google/vrtoolkit/cardboard/b;->values()[Lcom/google/vrtoolkit/cardboard/b;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 466
    iget v5, v0, Lcom/google/vrtoolkit/cardboard/b;->d:I

    if-ne v5, p0, :cond_0

    .line 472
    :goto_1
    return-object v0

    .line 465
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 471
    :cond_1
    const-string/jumbo v0, "CardboardDeviceParams"

    const-string/jumbo v1, "Unknown alignment type from proto: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget-object v0, Lcom/google/vrtoolkit/cardboard/b;->a:Lcom/google/vrtoolkit/cardboard/b;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/vrtoolkit/cardboard/b;
    .locals 1

    .prologue
    .line 448
    const-class v0, Lcom/google/vrtoolkit/cardboard/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/b;

    return-object v0
.end method

.method public static values()[Lcom/google/vrtoolkit/cardboard/b;
    .locals 1

    .prologue
    .line 448
    sget-object v0, Lcom/google/vrtoolkit/cardboard/b;->e:[Lcom/google/vrtoolkit/cardboard/b;

    invoke-virtual {v0}, [Lcom/google/vrtoolkit/cardboard/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vrtoolkit/cardboard/b;

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/b;->d:I

    return v0
.end method
