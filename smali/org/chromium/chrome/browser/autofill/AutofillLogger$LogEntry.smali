.class public Lorg/chromium/chrome/browser/autofill/AutofillLogger$LogEntry;
.super Ljava/lang/Object;
.source "AutofillLogger.java"


# instance fields
.field private final mAutofilledValue:Ljava/lang/String;

.field private final mProfileFullName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillLogger$LogEntry;->mAutofilledValue:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillLogger$LogEntry;->mProfileFullName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/autofill/AutofillLogger$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillLogger$LogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAutofilledValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillLogger$LogEntry;->mAutofilledValue:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillLogger$LogEntry;->mProfileFullName:Ljava/lang/String;

    return-object v0
.end method
