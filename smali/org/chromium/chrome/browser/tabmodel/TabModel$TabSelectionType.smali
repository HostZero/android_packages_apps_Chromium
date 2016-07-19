.class public final enum Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;
.super Ljava/lang/Enum;
.source "TabModel.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

.field public static final enum FROM_CLOSE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

.field public static final enum FROM_EXIT:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

.field public static final enum FROM_NEW:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

.field public static final enum FROM_USER:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    const-string/jumbo v1, "FROM_CLOSE"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_CLOSE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    .line 66
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    const-string/jumbo v1, "FROM_EXIT"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_EXIT:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    .line 69
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    const-string/jumbo v1, "FROM_NEW"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_NEW:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    .line 72
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    const-string/jumbo v1, "FROM_USER"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_USER:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_CLOSE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_EXIT:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_NEW:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_USER:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->$VALUES:[Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->$VALUES:[Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    return-object v0
.end method
