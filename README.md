# A PR Demo for DAAttributedStringUtils

Need to add `[super layoutSublayers];` to `DAAttributedLabelBaseLayer-layoutSublayers` of `DAAttributedLabel.m`, or the text won't resize when rotating device. 

Reference:
Programming in iOS 8
https://books.google.com/books?id=wLaVBQAAQBAJ&pg=PT161&lpg=PT161&dq=layoutSublayers+super&source=bl&ots=7tsw1NY1ET&sig=viF-J-xJiHV9CqgUo3NdF2bfCv0&hl=en&sa=X&ei=0MuzVKywMcOqggS2z4LgDA&ved=0CDIQ6AEwBjgK#v=onepage&q=layoutSublayers%20super&f=false

"Don't forget to call [super layoutSubviews], as this can cause unexpected behavior in various UIKit classes."
http://stackoverflow.com/questions/2504151/calayers-didnt-get-resized-on-its-uiviews-bounds-change-why

AsyncDisplayKit
https://github.com/facebook/AsyncDisplayKit/blob/c1f7d9f78d721ab5d5fa590f7decb2bc97ec4d62/AsyncDisplayKit/Details/_ASDisplayLayer.mm
