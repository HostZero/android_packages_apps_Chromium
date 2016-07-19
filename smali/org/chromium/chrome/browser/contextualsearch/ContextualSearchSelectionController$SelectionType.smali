.class public final enum Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;
.super Ljava/lang/Enum;
.source "ContextualSearchSelectionController.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

.field public static final enum LONG_PRESS:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

.field public static final enum TAP:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

.field public static final enum UNDETERMINED:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    const-string/jumbo v1, "UNDETERMINED"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->UNDETERMINED:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    .line 29
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    const-string/jumbo v1, "TAP"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->TAP:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    .line 30
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    const-string/jumbo v1, "LONG_PRESS"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->LONG_PRESS:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->UNDETERMINED:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->TAP:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->LONG_PRESS:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->$VALUES:[Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->$VALUES:[Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    return-object v0
.end method
