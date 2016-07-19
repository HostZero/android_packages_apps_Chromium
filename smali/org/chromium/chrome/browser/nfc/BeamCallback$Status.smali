.class Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;
.super Ljava/lang/Object;
.source "BeamCallback.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final errorStrID:Ljava/lang/Integer;

.field public final result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/chromium/chrome/browser/nfc/BeamCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-boolean v0, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;->errorStrID:Ljava/lang/Integer;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;->result:Ljava/lang/String;

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-boolean v0, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;->result:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;->errorStrID:Ljava/lang/Integer;

    .line 50
    return-void
.end method
