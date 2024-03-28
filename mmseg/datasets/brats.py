from .builder import DATASETS
from .custom import CustomDataset


@DATASETS.register_module()
class BraTsDataset(CustomDataset):
    CLASSES = ('bg','class1',)

    PALETTE = [[120, 120, 120],[120, 120, 0]]

    def __init__(self, **kwargs):

        super(BraTsDataset, self).__init__(
            img_suffix='.png',
            seg_map_suffix='.png',
            reduce_zero_label=True,
            **kwargs)
