.class public final Lorg/chromium/mojo/bindings/DataHeader;
.super Ljava/lang/Object;
.source "DataHeader.java"


# static fields
.field public static final ELEMENTS_OR_VERSION_OFFSET:I = 0x4

.field public static final HEADER_SIZE:I = 0x8

.field public static final SIZE_OFFSET:I


# instance fields
.field public final elementsOrVersion:I

.field public final size:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    .line 43
    iput p2, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    .line 44
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    if-ne p1, p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 67
    :cond_3
    check-cast p1, Lorg/chromium/mojo/bindings/DataHeader;

    .line 68
    iget v2, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    iget v3, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    iget v3, p1, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    add-int/lit8 v0, v0, 0x1f

    .line 54
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    add-int/2addr v0, v1

    .line 55
    return v0
.end method
