.class public Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;
.super Ljava/lang/Object;
.source "DataReductionProxyUma.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ACTION_DISMISSED:I = 0x4

.field public static final ACTION_ENABLED:I = 0x0

.field public static final ACTION_FRE_DISABLED:I = 0xa

.field public static final ACTION_FRE_ENABLED:I = 0x9

.field public static final ACTION_INDEX_BOUNDARY:I = 0xb

.field public static final ACTION_LOAD_IMAGES_CONTEXT_MENU_CLICKED:I = 0x6

.field public static final ACTION_LOAD_IMAGES_CONTEXT_MENU_SHOWN:I = 0x5

.field public static final ACTION_LOAD_IMAGES_SNACKBAR_CLICKED:I = 0x1

.field public static final ACTION_LOAD_IMAGES_SNACKBAR_SHOWN:I = 0x0

.field public static final ACTION_LOAD_IMAGE_CONTEXT_MENU_CLICKED:I = 0x3

.field public static final ACTION_LOAD_IMAGE_CONTEXT_MENU_CLICKED_ON_PAGE:I = 0x4

.field public static final ACTION_LOAD_IMAGE_CONTEXT_MENU_SHOWN:I = 0x2

.field public static final ACTION_OFF_TO_OFF:I = 0x5

.field public static final ACTION_OFF_TO_ON:I = 0x6

.field public static final ACTION_ON_TO_OFF:I = 0x7

.field public static final ACTION_ON_TO_ON:I = 0x8

.field public static final LOFI_ACTION_INDEX_BOUNDARY:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dataReductionProxyLoFiUIAction(I)V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 55
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p0, :cond_0

    if-lt p0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_1
    const-string/jumbo v0, "DataReductionProxy.LoFi.UIAction"

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 59
    return-void
.end method

.method public static dataReductionProxyUIAction(I)V
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 44
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p0, :cond_0

    if-lt p0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_1
    const-string/jumbo v0, "DataReductionProxy.UIAction"

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 48
    return-void
.end method
