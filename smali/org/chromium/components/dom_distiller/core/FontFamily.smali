.class public final enum Lorg/chromium/components/dom_distiller/core/FontFamily;
.super Ljava/lang/Enum;
.source "FontFamily.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/components/dom_distiller/core/FontFamily;

.field public static final enum FONT_FAMILY_COUNT:Lorg/chromium/components/dom_distiller/core/FontFamily;

.field public static final enum MONOSPACE:Lorg/chromium/components/dom_distiller/core/FontFamily;

.field public static final enum SANS_SERIF:Lorg/chromium/components/dom_distiller/core/FontFamily;

.field public static final enum SERIF:Lorg/chromium/components/dom_distiller/core/FontFamily;


# instance fields
.field private final mFontFamily:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lorg/chromium/components/dom_distiller/core/FontFamily;

    const-string/jumbo v1, "SANS_SERIF"

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/dom_distiller/core/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/dom_distiller/core/FontFamily;->SANS_SERIF:Lorg/chromium/components/dom_distiller/core/FontFamily;

    .line 17
    new-instance v0, Lorg/chromium/components/dom_distiller/core/FontFamily;

    const-string/jumbo v1, "SERIF"

    invoke-direct {v0, v1, v3, v3}, Lorg/chromium/components/dom_distiller/core/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/dom_distiller/core/FontFamily;->SERIF:Lorg/chromium/components/dom_distiller/core/FontFamily;

    .line 18
    new-instance v0, Lorg/chromium/components/dom_distiller/core/FontFamily;

    const-string/jumbo v1, "MONOSPACE"

    invoke-direct {v0, v1, v4, v4}, Lorg/chromium/components/dom_distiller/core/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/dom_distiller/core/FontFamily;->MONOSPACE:Lorg/chromium/components/dom_distiller/core/FontFamily;

    .line 19
    new-instance v0, Lorg/chromium/components/dom_distiller/core/FontFamily;

    const-string/jumbo v1, "FONT_FAMILY_COUNT"

    invoke-direct {v0, v1, v5, v5}, Lorg/chromium/components/dom_distiller/core/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/dom_distiller/core/FontFamily;->FONT_FAMILY_COUNT:Lorg/chromium/components/dom_distiller/core/FontFamily;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/chromium/components/dom_distiller/core/FontFamily;

    sget-object v1, Lorg/chromium/components/dom_distiller/core/FontFamily;->SANS_SERIF:Lorg/chromium/components/dom_distiller/core/FontFamily;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/components/dom_distiller/core/FontFamily;->SERIF:Lorg/chromium/components/dom_distiller/core/FontFamily;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/components/dom_distiller/core/FontFamily;->MONOSPACE:Lorg/chromium/components/dom_distiller/core/FontFamily;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/components/dom_distiller/core/FontFamily;->FONT_FAMILY_COUNT:Lorg/chromium/components/dom_distiller/core/FontFamily;

    aput-object v1, v0, v5

    sput-object v0, Lorg/chromium/components/dom_distiller/core/FontFamily;->$VALUES:[Lorg/chromium/components/dom_distiller/core/FontFamily;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lorg/chromium/components/dom_distiller/core/FontFamily;->mFontFamily:I

    .line 24
    return-void
.end method

.method public static getFontFamilyForValue(I)Lorg/chromium/components/dom_distiller/core/FontFamily;
    .locals 5

    .prologue
    .line 29
    invoke-static {}, Lorg/chromium/components/dom_distiller/core/FontFamily;->values()[Lorg/chromium/components/dom_distiller/core/FontFamily;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 30
    iget v4, v0, Lorg/chromium/components/dom_distiller/core/FontFamily;->mFontFamily:I

    if-ne v4, p0, :cond_0

    .line 34
    :goto_1
    return-object v0

    .line 29
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/components/dom_distiller/core/FontFamily;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lorg/chromium/components/dom_distiller/core/FontFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/dom_distiller/core/FontFamily;

    return-object v0
.end method

.method public static values()[Lorg/chromium/components/dom_distiller/core/FontFamily;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lorg/chromium/components/dom_distiller/core/FontFamily;->$VALUES:[Lorg/chromium/components/dom_distiller/core/FontFamily;

    invoke-virtual {v0}, [Lorg/chromium/components/dom_distiller/core/FontFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/components/dom_distiller/core/FontFamily;

    return-object v0
.end method


# virtual methods
.method final asNativeEnum()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lorg/chromium/components/dom_distiller/core/FontFamily;->mFontFamily:I

    return v0
.end method
