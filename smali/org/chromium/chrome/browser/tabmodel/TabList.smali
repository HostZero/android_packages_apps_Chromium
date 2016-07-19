.class public interface abstract Lorg/chromium/chrome/browser/tabmodel/TabList;
.super Ljava/lang/Object;
.source "TabList.java"


# static fields
.field public static final INVALID_TAB_INDEX:I = -0x1


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
.end method

.method public abstract index()I
.end method

.method public abstract indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I
.end method

.method public abstract isClosurePending(I)Z
.end method

.method public abstract isIncognito()Z
.end method
