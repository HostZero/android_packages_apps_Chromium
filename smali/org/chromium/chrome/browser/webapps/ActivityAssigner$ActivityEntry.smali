.class Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;
.super Ljava/lang/Object;
.source "ActivityAssigner.java"


# instance fields
.field final mActivityIndex:I

.field final mWebappId:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;->mActivityIndex:I

    .line 92
    iput-object p2, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;->mWebappId:Ljava/lang/String;

    .line 93
    return-void
.end method
