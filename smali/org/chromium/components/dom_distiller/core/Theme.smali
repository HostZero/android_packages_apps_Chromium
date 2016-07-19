.class public final enum Lorg/chromium/components/dom_distiller/core/Theme;
.super Ljava/lang/Enum;
.source "Theme.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/components/dom_distiller/core/Theme;

.field public static final enum DARK:Lorg/chromium/components/dom_distiller/core/Theme;

.field public static final enum LIGHT:Lorg/chromium/components/dom_distiller/core/Theme;

.field public static final enum SEPIA:Lorg/chromium/components/dom_distiller/core/Theme;

.field public static final enum THEME_COUNT:Lorg/chromium/components/dom_distiller/core/Theme;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lorg/chromium/components/dom_distiller/core/Theme;

    const-string/jumbo v1, "LIGHT"

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/dom_distiller/core/Theme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/dom_distiller/core/Theme;->LIGHT:Lorg/chromium/components/dom_distiller/core/Theme;

    .line 15
    new-instance v0, Lorg/chromium/components/dom_distiller/core/Theme;

    const-string/jumbo v1, "DARK"

    invoke-direct {v0, v1, v3, v3}, Lorg/chromium/components/dom_distiller/core/Theme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/dom_distiller/core/Theme;->DARK:Lorg/chromium/components/dom_distiller/core/Theme;

    .line 16
    new-instance v0, Lorg/chromium/components/dom_distiller/core/Theme;

    const-string/jumbo v1, "SEPIA"

    invoke-direct {v0, v1, v4, v4}, Lorg/chromium/components/dom_distiller/core/Theme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/dom_distiller/core/Theme;->SEPIA:Lorg/chromium/components/dom_distiller/core/Theme;

    .line 17
    new-instance v0, Lorg/chromium/components/dom_distiller/core/Theme;

    const-string/jumbo v1, "THEME_COUNT"

    invoke-direct {v0, v1, v5, v5}, Lorg/chromium/components/dom_distiller/core/Theme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/dom_distiller/core/Theme;->THEME_COUNT:Lorg/chromium/components/dom_distiller/core/Theme;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/chromium/components/dom_distiller/core/Theme;

    sget-object v1, Lorg/chromium/components/dom_distiller/core/Theme;->LIGHT:Lorg/chromium/components/dom_distiller/core/Theme;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/components/dom_distiller/core/Theme;->DARK:Lorg/chromium/components/dom_distiller/core/Theme;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/components/dom_distiller/core/Theme;->SEPIA:Lorg/chromium/components/dom_distiller/core/Theme;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/components/dom_distiller/core/Theme;->THEME_COUNT:Lorg/chromium/components/dom_distiller/core/Theme;

    aput-object v1, v0, v5

    sput-object v0, Lorg/chromium/components/dom_distiller/core/Theme;->$VALUES:[Lorg/chromium/components/dom_distiller/core/Theme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lorg/chromium/components/dom_distiller/core/Theme;->mValue:I

    .line 22
    return-void
.end method

.method static getThemeForValue(I)Lorg/chromium/components/dom_distiller/core/Theme;
    .locals 5

    .prologue
    .line 29
    invoke-static {}, Lorg/chromium/components/dom_distiller/core/Theme;->values()[Lorg/chromium/components/dom_distiller/core/Theme;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 30
    iget v4, v0, Lorg/chromium/components/dom_distiller/core/Theme;->mValue:I

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

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/components/dom_distiller/core/Theme;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lorg/chromium/components/dom_distiller/core/Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/dom_distiller/core/Theme;

    return-object v0
.end method

.method public static values()[Lorg/chromium/components/dom_distiller/core/Theme;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lorg/chromium/components/dom_distiller/core/Theme;->$VALUES:[Lorg/chromium/components/dom_distiller/core/Theme;

    invoke-virtual {v0}, [Lorg/chromium/components/dom_distiller/core/Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/components/dom_distiller/core/Theme;

    return-object v0
.end method


# virtual methods
.method final asNativeEnum()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lorg/chromium/components/dom_distiller/core/Theme;->mValue:I

    return v0
.end method
