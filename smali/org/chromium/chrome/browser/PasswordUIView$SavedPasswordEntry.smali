.class public final Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;
.super Ljava/lang/Object;
.source "PasswordUIView.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;->mUrl:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;->mName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/PasswordUIView$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/PasswordUIView$SavedPasswordEntry;->mName:Ljava/lang/String;

    return-object v0
.end method
