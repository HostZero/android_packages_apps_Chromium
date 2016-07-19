.class public Lorg/chromium/mojo/bindings/BindingsHelper;
.super Ljava/lang/Object;
.source "BindingsHelper.java"


# static fields
.field public static final ALIGNMENT:I = 0x8

.field public static final ARRAY_NULLABLE:I = 0x1

.field public static final ELEMENT_NULLABLE:I = 0x2

.field public static final MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/DataHeader;

.field public static final NOTHING_NULLABLE:I = 0x0

.field public static final POINTER_SIZE:I = 0x8

.field public static final SERIALIZED_HANDLE_SIZE:I = 0x4

.field public static final SERIALIZED_INTERFACE_SIZE:I = 0x8

.field public static final UNION_SIZE:I = 0x10

.field public static final UNSPECIFIED_ARRAY_LENGTH:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    sput-object v0, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static align(I)I
    .locals 1

    .prologue
    .line 79
    add-int/lit8 v0, p0, 0x8

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, -0x8

    return v0
.end method

.method public static align(J)J
    .locals 4

    .prologue
    .line 86
    const-wide/16 v0, 0x8

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, -0x8

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 126
    if-ne p0, p1, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    .line 129
    :cond_0
    if-nez p0, :cond_1

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static getDefaultAsyncWaiterForHandle(Lorg/chromium/mojo/system/Handle;)Lorg/chromium/mojo/system/AsyncWaiter;
    .locals 1

    .prologue
    .line 193
    invoke-interface {p0}, Lorg/chromium/mojo/system/Handle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {p0}, Lorg/chromium/mojo/system/Handle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/Core;->getDefaultAsyncWaiter()Lorg/chromium/mojo/system/AsyncWaiter;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hashCode(D)I
    .locals 2

    .prologue
    .line 170
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public static hashCode(F)I
    .locals 1

    .prologue
    .line 163
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public static hashCode(I)I
    .locals 0

    .prologue
    .line 177
    return p0
.end method

.method public static hashCode(J)I
    .locals 2

    .prologue
    .line 156
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Z)I
    .locals 1

    .prologue
    .line 149
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public static isArrayNullable(I)Z
    .locals 1

    .prologue
    .line 68
    and-int/lit8 v0, p0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isElementNullable(I)Z
    .locals 1

    .prologue
    .line 72
    and-int/lit8 v0, p0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
